program can_tst_opu;

uses
  Forms,
  umain in 'main\umain.pas' {frmMain},
  udisplay in 'udisplay.pas',
  ucan in 'ucan.pas',
  uinit in 'uinit.pas',
  udata in 'udata.pas',
  can in 'can\can.pas',
  uvisual in 'graph\uvisual.pas' {frmVis},
  uexecute in 'uexecute.pas',
  ucontrlol_by_angle in 'ucontrlol_by_angle.pas' {frmControlByAngle},
  usensor in 'usensor.pas' {frmSens},
  ucustomization in 'ucustomization.pas' {frmCust},
  utimers in 'utimers.pas',
  usave in 'usave.pas',
  urmd in 'rmd\urmd.pas' {frmRmd},
  urmd_customization in 'rmd\urmd_customization.pas',
  urmd_data in 'rmd\urmd_data.pas',
  urmd_display in 'rmd\urmd_display.pas',
  urmd_init in 'rmd\urmd_init.pas',
  urmd_save in 'rmd\urmd_save.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmVis, frmVis);
  Application.CreateForm(TfrmControlByAngle, frmControlByAngle);
  Application.CreateForm(TfrmSens, frmSens);
  Application.CreateForm(TfrmCust, frmCust);
  Application.CreateForm(TfrmRmd, frmRmd);
  Application.Run;
end.
