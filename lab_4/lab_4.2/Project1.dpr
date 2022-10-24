program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  OKCANCL2 in 'OKCANCL2.pas' {OKRightDlg},
  OKCANCL in 'OKCANCL.pas' {OKRightDlg1},
  OKCANCL1 in 'OKCANCL1.pas' {OKRightDlg12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  Application.CreateForm(TOKRightDlg1, OKRightDlg1);
  Application.CreateForm(TOKRightDlg12, OKRightDlg12);
  Application.Run;
end.
