unit uFB_Convert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, IniFiles, uTools, StdCtrls;

type
  TfrmFB_Convert = class(TForm)
    btnActualizar: TRzBitBtn;
    btnCerrar: TRzBitBtn;
    btnTransDB: TRzBitBtn;
    lblRdo: TLabel;
    lblCon: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnActualizarClick(Sender: TObject);
    procedure btnTransDBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFB_Convert: TfrmFB_Convert;

implementation

uses uConversion, udmGestion, udmSaveFile;

{$R *.dfm}

procedure TfrmFB_Convert.btnActualizarClick(Sender: TObject);
begin
  lblRdo.Caption := Actualizador(Max_Suc, IdBranch, BaseDirectory);
  Application.ProcessMessages;
end;

procedure TfrmFB_Convert.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFB_Convert.btnTransDBClick(Sender: TObject);
begin
  frmConversion := TfrmConversion.Create(Self);
  frmConversion.Show;
end;

procedure TfrmFB_Convert.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFB_Convert.FormCreate(Sender: TObject);
var
  Reg: TIniFile;
begin
  lblCon.Caption := Vacio;
  lblRdo.Caption := Vacio;
  NameBranch := Cero;
  Max_Suc := 0; //Determina que tipo de conversion se realiza 1 DBIsam, 2 TXT

  PasoExe := ExtractFilePath(Application.ExeName);
  DataDirectory := Cero;
  BranchConfig := Cero;
  PointConfig := Cero;
  BaseDirectory := Cero;
  TipoConversion := Cero;

  Reg := TIniFile.Create(PasoExe + 'CfgBase.ini');
  try
    DataDirectory := Reg.ReadString('FBICfg', 'Locacion', '');
    BranchConfig  := Reg.ReadString('FBICfg', 'Sucursal', '');
    PointConfig   := Reg.ReadString('FBICfg', 'Terminal', '');
    BaseDirectory := Reg.ReadString('FBICfg', 'Ubicacion', '');
    TipoConversion:= Reg.ReadString('FBICfg', 'TipoBase', '');
    if (Trim(DataDirectory) = Vacio) or
       (Trim(BranchConfig) = Vacio) or
       (Trim(PointConfig) = Vacio) then
    begin
      Application.Terminate;
    end;
  finally
    Reg.Free;
  end;

  try
    Screen.Cursor := crHourGlass;
     // Punto de Venta
    try
      IdSalesPoint := StrToInt(PointConfig);
    except
      raise EUsuario.Create('Punto mal configurado');
    end;
    // Sucursal
    try
      IdBranch := StrToInt(BranchConfig);
    except
      raise EUsuario.Create('Sucursal mal configurado');
    end;
    if Trim(Up_Case(TipoConversion)) > Vacio then
    begin
      if Up_Case(TipoConversion) = 'DBI'  then
        Max_Suc := 1; // DBIsam
      if Up_Case(TipoConversion) = 'TXT'  then
        Max_Suc := 2; // TXT
    end;
  finally
    Screen.Cursor := crDefault;
    lblCon.Caption := Format('%s Sª %d / %d - %s - %s',
                      [TipoConversion, IdBranch, IdSalesPoint,
                      DataDirectory, BaseDirectory]);
    Application.ProcessMessages;
  end;
end;

end.
