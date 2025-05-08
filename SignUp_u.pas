unit SignUp_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Teekay_u,TeekayDB_u, Buttons;

type
  TForm1 = class(TForm)
    lblTeekay: TLabel;
    btnSignUp: TButton;
    edtID: TEdit;
    edtPassword: TEdit;
    edtUsername: TEdit;
    lbl1: TLabel;
    lblLogin: TLabel;
    lblID: TLabel;
    lblPassword: TLabel;
    lblUsername: TLabel;
    edtCPassword: TEdit;
    lblCPassord: TLabel;
    lblName: TLabel;
    edtFullName: TEdit;
    rgpPos: TRadioGroup;
    btnHelp: TBitBtn;
    edtAccoutNo: TEdit;
    lblAccount: TLabel;
    blnhntHint: TBalloonHint;
    procedure btnSignUpClick(Sender: TObject);
    procedure lblLoginClick(Sender: TObject);
    procedure rgpPosClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnHelpClick(Sender: TObject);
begin
ShowMessage('Enter all your details and click the ''Sign Up'' button to create an account');
end;

procedure TForm1.btnSignUpClick(Sender: TObject);
var
bFlag:Boolean;
tNum:TextFile;
begin
with dmTeekay do
begin
  tblTeekay.First;
  bFlag:=True;
  while not tblTeekay.Eof do
  begin
    if (edtID.Text = tblClients['IDNumber']) then
    begin
      bFlag:=False;
    end else if (edtUsername.Text = tblClients['Username']) then
             begin
                bFlag:=False;
             end;

    tblTeekay.Next;

  end;

  if (bFlag) and (rgpPos.ItemIndex = 1) then
  begin
    tblClients.Insert;
    tblClients['Username']:='Emp' + edtUsername.Text;
    tblClients['Client Name']:=edtFullName.Text;
    tblClients['Password']:=edtPassword.Text;
    tblClients['IDNumber']:=edtID.Text;
    tblClients['Card Number']:=edtAccoutNo.Text;
    tblClients.Post;
    tblClients.Refresh;
    AssignFile(tNum,'Numbers.txt');
    Append(tNum);
    Writeln(tNum,tblClients['Client Name'] + '$031' + IntToStr(Random(89999999) + 10000000));
    CloseFile(tNum);
    ShowMessage('Account created successfully');
  end else
  begin
    ShowMessage('You already have an account');
  end;

  if (bFlag) and (rgpPos.ItemIndex = 0) then
  begin
    tblClients.Insert;
    tblClients['Username']:=edtUsername.Text;
    tblClients['Client Name']:=edtFullName.Text;
    tblClients['Password']:=edtPassword.Text;
    tblClients['IDNumber']:=edtID.Text;
    tblClients['Card Number']:=edtAccoutNo.Text;
    tblClients.Post;
    tblClients.Refresh;
    ShowMessage('Account created successfully');
  end else
  begin
    ShowMessage('You already have an account');
  end;

end;
end;

procedure TForm1.lblLoginClick(Sender: TObject);
begin
frmLogin.Show;
Form1.Hide;
end;

procedure TForm1.rgpPosClick(Sender: TObject);
begin
if rgpPos.ItemIndex = 1 then
begin
  lblUsername.Caption:='Employee Number';
end else if rgpPos.ItemIndex = 0 then
         begin
           lblUsername.Caption:='Username';
         end;
end;

end.
