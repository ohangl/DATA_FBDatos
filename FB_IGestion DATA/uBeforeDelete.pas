unit uBeforeDelete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLstBox, RzChkLst, DBCtrls, RzDBCmbo,
  RzLabel, RzCmboBx, ExtCtrls, RzPanel;

type
  TfrmBeforeDelete = class(TForm)
    gbMotDel: TRzGroupBox;
    cbMotBaja: TRzComboBox;
    btnSalir: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbMotBajaExit(Sender: TObject);
  private
    { Private declarations }
    IdMotivoBaja: Integer;
  public
    { Public declarations }
  end;

  function AntesDeBorrar: Integer; 

var
  frmBeforeDelete: TfrmBeforeDelete;

implementation

uses udmGestion, uTools;

{$R *.dfm}

function AntesDeBorrar: Integer;
begin
  Result := 0;
  frmBeforeDelete := TfrmBeforeDelete.Create(nil);
  with frmBeforeDelete do
  begin
    ShowModal;
    if IdMotivoBaja <= 0 then
      raise EUsuario.Create('Debe justificar el borrado del Comprobante.-')
    else
      Result := IdMotivoBaja;
  end;
end;

procedure TfrmBeforeDelete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBeforeDelete.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBeforeDelete.FormCreate(Sender: TObject);
begin
  IdMotivoBaja := 0;
  with dmGestion do
  begin
    cbMotBaja.ClearItems;
    cbMotBaja.Items.AddObject('<ELIJA MOTIVO ANULACIÓN>', TObject(0));
    MotivosBJ.Open;
    MotivosBJ.First;
    while not MotivosBJ.Eof do
    begin
      cbMotBaja.Items.AddObject(MotivosBJMOTIVOBJ.AsString, TObject(MotivosBJIDMOTBJ.AsInteger));
      MotivosBJ.Next;
    end;
    cbMotBaja.ItemIndex := 0;
    MotivosBJ.Close;
  end;
end;

procedure TfrmBeforeDelete.cbMotBajaExit(Sender: TObject);
begin
  IdMotivoBaja := Integer(cbMotBaja.Items.Objects[cbMotBaja.ItemIndex]);
end;

end.
