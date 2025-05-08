program Teekay_p;

uses
  Forms,
  Teekay_u in 'Teekay_u.pas' {frmLogin},
  SignUp_u in 'SignUp_u.pas' {Form1},
  TeekayDB_u in 'TeekayDB_u.pas' {dmTeekay: TDataModule},
  RentPay_u in 'RentPay_u.pas' {Form2},
  Apply_u in 'Apply_u.pas' {Form3},
  Pay_u in 'Pay_u.pas' {Form4},
  clsMansions in 'clsMansions.pas',
  Request_u in 'Request_u.pas' {Form5},
  Emp_u in 'Emp_u.pas' {Form6},
  AgentRequests_u in 'AgentRequests_u.pas' {Form7},
  Search_u in 'Search_u.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmTeekay, dmTeekay);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
