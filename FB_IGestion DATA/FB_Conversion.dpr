program FB_Conversion;

uses
  Forms,
  uConversion in 'uConversion.pas' {frmConversion},
  udmGestion in 'udmGestion.pas' {dmGestion: TDataModule},
  udmSaveFile in 'udmSaveFile.pas' {dmSaveFile: TDataModule},
  uTools in 'uTools.pas',
  uFB_Convert in 'uFB_Convert.pas' {frmFB_Convert};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Conversion';
  Application.CreateForm(TdmGestion, dmGestion);
  Application.CreateForm(TdmSaveFile, dmSaveFile);
  Application.CreateForm(TfrmFB_Convert, frmFB_Convert);
  Application.Run;
end.
