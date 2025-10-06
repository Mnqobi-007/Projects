unit Teekay_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,RentPay_u,clsMansions,Emp_u,AgentRequests_u;

type
  TfrmLogin = class(TForm)
    lblTeekay: TLabel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    lblAccount: TLabel;
    lbl1: TLabel;
    btnLogIn: TButton;
    lblID: TLabel;
    edtID: TEdit;
    btnHelp: TBitBtn;
    btnExit: TBitBtn;
    blnhnt1: TBalloonHint;
    btnShowHide: TButton;
    procedure lblAccountClick(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnShowHideClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  objTeekay: TMansions;

implementation

{$R *.dfm}

uses
SignUp_u,TeekayDB_u;

procedure TfrmLogin.btnExitClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmLogin.btnHelpClick(Sender: TObject);
begin
ShowMessage('Enter all your details and click the ''Log In'' button to log in to your account');
end;

procedure TfrmLogin.btnLogInClick(Sender: TObject);
var
tRequest,tClient:TextFile;
sLine,sWord:string;
iCount:Integer;
begin
iCount:=0;
if objTeekay.CheckValid(edtUsername.Text,edtPassword.Text,edtID.Text) = True then
begin
  objTeekay.setLogged(edtUsername.Text,edtPassword.Text);     //User1 ID: 0504185957087
  ShowMessage('You have successfully logged in!');           //EmpID: 9907235457085
  //User panel                                               //Emp11
  if Pos('Emp',edtUsername.Text) > 0 then                    //Password: Samke278
  begin                                                       //Emp2ID: 0212255358084
    Form6.dbgrdProp.DataSource:=dmTeekay.dsTeekay;            //Emp12
    Form6.dbgrdClient.DataSource:=dmTeekay.dsClients;         //Password: AphiWE
    AssignFile(tRequest,'Agent.txt');
    Reset(tRequest);
    AssignFile(tClient,'Clients.txt');
    Reset(tClient);
    Readln(tClient,sWord);         //UserID
    Readln(tClient,sWord);         //Name
    objTeekay.LimitUser;
    while not Eof(tRequest) do
    begin
      Readln(tRequest,sLine);
      if Copy(sLine,Pos('#',sLine) + 1,Pos('$',sLine) - Pos('#',sLine) - 1) = sWord then
       begin
         //Request Notification
         Inc(iCount);
         Form7.memDisplay.Lines.Add('Request in ' + Copy(sLine,Pos('$',sLine) + 1) + ' by ' + Copy(sLine,1,Pos('#',sLine) - 1));
       end;
    end;
    CloseFile(tRequest);
    CloseFile(tClient);
    Form7.lblRequests.Caption:='You have ' + IntToStr(iCount) + ' Requests';
    Form2.btnPay.Caption:='Manage Mansion details';
    Form2.btnApply.Caption:='View Appointments';
    Form2.Show;
  end else if Pos('Emp',edtUsername.Text) = 0 then
  begin
    Form2.Show;
    objTeekay.LimitUser;
  end;
  frmLogin.Hide;
end else if objTeekay.CheckValid(edtUsername.Text,edtPassword.Text,edtID.Text) = false then
         begin
           ShowMessage('Data does not match');
           edtID.Clear;
           edtUsername.Clear;
           edtPassword.Clear;
           edtID.SetFocus;
         end;

end;

procedure TfrmLogin.btnShowHideClick(Sender: TObject);
begin
if btnShowHide.Caption = 'Φ' then
begin
  edtPassword.PasswordChar:=#0;
  btnShowHide.Caption := 'O';
end else if btnShowHide.Caption = 'O' then
         begin
           edtPassword.PasswordChar:='*';
           btnShowHide.Caption := 'Φ';
         end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
edtID.Clear;
edtUsername.Clear;
edtPassword.Clear;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
edtID.SetFocus;
end;

procedure TfrmLogin.lblAccountClick(Sender: TObject);
begin
Form1.Show;
frmLogin.Hide;
end;

end.
