unit uImpCodBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBmpBtn, StdCtrls, Mask, wwdbedit, RzButton, ExtCtrls, RzPanel,
  DB, wwdblook, Wwdotdot, Wwdbcomb, MDOCustomDataSet, MDODatabase, DBClient,
  RzRadGrp, uTools, RzBorder, RzEdit;

type
  TfrmImpCodBar = class(TForm)
    ItemsP: TClientDataSet;
    ItemsPIdArticulo: TIntegerField;
    ItemsPCodBarra: TStringField;
    ItemsPDescripcion: TStringField;
    ItemsPMarca: TStringField;
    ItemsPColor: TStringField;
    ItemsPGrupoSubGrupo: TStringField;
    ItemsPPrecioFinal: TMDOBCDField;
    ItemsPCodArt: TStringField;
    ItemsPCantidad: TIntegerField;
    ItemsPTalle: TIntegerField;

    pnlFootEtq: TRzPanel;
    btnCerrarEtq: TRzBitBtn;
    gbEtiquetas: TRzGroupBox;
    rgCantEtq: TRzRadioGroup;
    lblCantFlj: TLabel;
    edtCantEtq: TRzNumericEdit;
    btnEtiquetasPrint: TRzBitBtn;
    lblTalle: TLabel;
    edtTalle: TRzNumericEdit;
    rgTipoEtq: TRzRadioGroup;
    brEtiquetas: TRzBorder;

    procedure FormCreate(Sender: TObject);
    procedure btnEtiquetasPrintClick(Sender: TObject);
    procedure btnCerrarEtqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Etiquetas_Print;
  public
    { Public declarations }
    CodProd,
    CantStk,
    ElTalle: Integer;
    IC: TBody_Fiscal;
  end;

var
  frmImpCodBar: TfrmImpCodBar;

implementation

uses udmGestion, udmSaveFile, uConfiguracion;

{$R *.dfm}

procedure TfrmImpCodBar.Etiquetas_Print;
var
  i: SmallInt;
begin
  try
    if ItemsP.Active then
      ItemsP.EmptyDataSet
    else
      ItemsP.CreateDataSet;

    if rgCantEtq.ItemIndex = 2 then
    begin
      try
        CantStk := edtCantEtq.IntValue;
      except
        edtCantEtq.IntValue := 0;
        CantStk := 0;
        edtCantEtq.SetFocus;
        raise EUsuario.Create('cantidad invalida.')
      end;

      if GetDatosArt(CodProd, Vacio, Datos_Art) then
      begin
        ItemsP.Append;
        ItemsPIdArticulo.AsInteger := Datos_Art.IdArticulo;
        ItemsPCodBarra.AsString := Datos_Art.CodBarra;
        ItemsPCantidad.AsInteger := CantStk;
        ElTalle := 0;
        if Control_Talles then
        begin
          try
            ElTalle := SetTextTalle(IntToStr(edtTalle.IntValue));
          except
            ElTalle := 0;
            edtTalle.IntValue := 0;
            raise EUsuario.Create('Talle invalido.')
          end;
        end;
        ItemsPTalle.AsInteger := ElTalle;
        ItemsPDescripcion.AsString := Datos_Art.Detalle;
        ItemsPMarca.AsString := Datos_Art.Marca;
        ItemsPColor.AsString := Datos_Art.Color;
        ItemsPPrecioFinal.AsCurrency := Datos_Art.Precio;
        ItemsPGrupoSubGrupo.AsString := Datos_Art.DetGrupo+' '+Datos_Art.DetSubGr;
        ItemsP.Post;
      end;
    end
    else begin
      i := 1;
      while IC[i].IdProducto > 0 do
      begin
        if GetDatosArt(IC[i].IdProducto, Vacio, Datos_Art) then
        begin
          ItemsP.Append;
          ItemsPIdArticulo.AsInteger := Datos_Art.IdArticulo;
          ItemsPCodBarra.AsString := Datos_Art.CodBarra;
          Case rgCantEtq.ItemIndex of
            0: ItemsPCantidad.AsInteger := 1;
            1: ItemsPCantidad.AsInteger := Round(IC[i].Cantidad);
          end;
          ElTalle := 0;
          if Control_Talles then
          begin
            try
              ElTalle := SetTextTalle(IntToStr(edtTalle.IntValue));
            except
              ElTalle := 0;
              edtTalle.IntValue := 0;
              raise EUsuario.Create('Talle invalido.')
            end;
          end;
          ItemsPTalle.AsInteger := ElTalle;
          ItemsPDescripcion.AsString := Datos_Art.Detalle;
          ItemsPMarca.AsString := Datos_Art.Marca;
          ItemsPColor.AsString := Datos_Art.Color;
          ItemsPPrecioFinal.AsCurrency := Datos_Art.Precio;
          ItemsPGrupoSubGrupo.AsString := Datos_Art.DetGrupo+' '+Datos_Art.DetSubGr;
          ItemsP.Post;
        end;
        Inc(i);
      end;
    end;

    if not ItemsP.IsEmpty then
    begin
      case rgTipoEtq.ItemIndex of
        0: Print_Label(ItemsP);
        1: Print_CodeB(ItemsP);
      end;
    end;
  finally
    ItemsP.Close;
  end;
end;

procedure TfrmImpCodBar.btnEtiquetasPrintClick(Sender: TObject);
begin
  Etiquetas_Print;
end;

procedure TfrmImpCodBar.btnCerrarEtqClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpCodBar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmImpCodBar.FormCreate(Sender: TObject);
begin
  CodProd := 0;
  CantStk := 0;
  ElTalle := 0;
  FillChar(IC, 0, SizeOf(TBody_Fiscal));
end;

procedure TfrmImpCodBar.FormShow(Sender: TObject);
begin
  edtCantEtq.IntValue := 0;
  if CantStk > 0  then
  begin
    edtCantEtq.IntValue := ABS(CantStk);
    rgCantEtq.ItemIndex := 2;
    rgTipoEtq.ItemIndex := 1;
  end;

  if Control_Talles then
  begin
    lblTalle.Visible := True;
    edtTalle.Visible := True;
    edtTalle.IntValue:= ElTalle
  end
  else begin
    lblTalle.Visible := False;
    edtTalle.Visible := False;
  end;
end;

end.
