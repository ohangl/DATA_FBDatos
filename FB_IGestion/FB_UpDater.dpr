program FB_UpDater;

uses
  Forms,
  Up_Dater in 'Up_Dater.pas' {frmFB_UpDater},
  uConfiguracion in 'uConfiguracion.pas' {frmConfiguracion},
  udmSaveFile in 'udmSaveFile.pas' {dmSaveFile: TDataModule},
  udmGestion in 'udmGestion.pas' {dmGestion: TDataModule},
  uTools in 'uTools.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'FB_UpDater';
  Application.CreateForm(TfrmFB_UpDater, frmFB_UpDater);
  Application.CreateForm(TdmGestion, dmGestion);
  Application.CreateForm(TdmSaveFile, dmSaveFile);
  Application.Run;
end.
