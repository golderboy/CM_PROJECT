program NT_delphi;

uses
  Forms,
  mian in 'mian.pas' {main_f},
  bmi in 'bmi.pas' {bmi_f},
  doung in 'doung.pas' {doung_f},
  cid in 'cid.pas' {cid_f},
  caseof in 'caseof.pas' {case_f},
  fordo in 'fordo.pas' {for_f},
  ifthenelse in 'ifthenelse.pas' {ifelse_f},
  var_1 in 'var_1.pas' {Form1},
  var_2 in 'var_2.pas' {Form2},
  whiledo in 'whiledo.pas' {whild_f};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain_f, main_f);
  Application.CreateForm(Tbmi_f, bmi_f);
  Application.CreateForm(Tdoung_f, doung_f);
  Application.CreateForm(Tcid_f, cid_f);
  Application.CreateForm(Tcase_f, case_f);
  Application.CreateForm(Tfor_f, for_f);
  Application.CreateForm(Tifelse_f, ifelse_f);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Twhild_f, whild_f);
  Application.Run;
end.
