unit uBuscaEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Wwdbigrd, Wwdbgrid,
  RzButton, RzPanel, MDOCustomDataSet, MDOQuery, Mask, RzEdit;

type
  TfrmBuscaEmp = class(TForm)
    pnlBcaEmp: TRzPanel;
    lblEmpleado: TLabel;
    edtEmpleadoBuscado: TRzEdit;
    qBuscaEmpIdEmpleado: TIntegerField;
    qBuscaEmpNombre: TStringField;
    qBuscaEmp: TMDOQuery;
    dsBuscaEmp: TDataSource;
    gEmpBuscados: TwwDBGrid;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtEmpleadoBuscadoExit(Sender: TObject);
    procedure gEmpBuscadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Elegido: Integer;
  end;

var
  frmBuscaEmp: TfrmBuscaEmp;

implementation

uses udmGestion;

{$R *.DFM}

procedure TfrmBuscaEmp.btnAceptarClick(Sender: TObject);
begin
  Elegido := qBuscaEmpIdEmpleado.Value;
end;

procedure TfrmBuscaEmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBuscaEmp.edtEmpleadoBuscadoExit(Sender: TObject);
begin
  qBuscaEmp.Close;
  qBuscaEmp.ParamByName('Buscado').AsString := '%'+Trim(edtEmpleadoBuscado.Text)+'%';
  qBuscaEmp.Open;
  if qBuscaEmp.IsEmpty then
    edtEmpleadoBuscado.SetFocus
  else
    gEmpBuscados.SetFocus;
end;

procedure TfrmBuscaEmp.gEmpBuscadosKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    Elegido := qBuscaEmpIdEmpleado.Value;
    ModalResult := mrOK;
  end;
end;

end.
