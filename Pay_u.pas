unit Pay_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,TeekayDB_u, Buttons, clsMansions;

type
  TForm4 = class(TForm)
    lblTeekay: TLabel;
    lblName: TLabel;
    cmbMansion: TComboBox;
    lblPIN: TLabel;
    lblCardholder: TLabel;
    lblExpire: TLabel;
    lblAccountNum: TLabel;
    edtCardHolder: TEdit;
    edtExpiry: TEdit;
    edtAccount: TEdit;
    edtPIN: TEdit;
    btnPay: TButton;
    btnHelp: TBitBtn;
    blnhntHint: TBalloonHint;
    lblCost: TLabel;
    procedure btnPayClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure cmbMansionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  objMansions: TMansions;

implementation

{$R *.dfm}

procedure TForm4.btnHelpClick(Sender: TObject);
begin
ShowMessage('Ente the bank details to rent the property');
end;

procedure TForm4.btnPayClick(Sender: TObject);
var
tFile:TextFile;
sLine:string;
bFlag:Boolean;
begin
bFlag:=False;
AssignFile(tFile,'Clients.txt');
Reset(tFile);
Readln(tFile,sLine);
if (Length(edtExpiry.Text) = 5) and (Length(edtAccount.Text) = 15) and (cmbMansion.Text <> null) and (Length(edtPIN.Text) = 4) and (Pos('/',edtExpiry.Text) > 0) then
begin
  dmTeekay.tblTeekay.First;
  while not dmTeekay.tblTeekay.Eof do
  begin
    if dmTeekay.tblTeekay['Property Name'] = cmbMansion.Text then
    begin
      bFlag:=True;
      dmTeekay.tblTeekay.Edit;
      dmTeekay.tblTeekay['UserID']:=sLine;
      dmTeekay.tblTeekay.Post;
    end;
    dmTeekay.tblTeekay.Next;
  end;
  if bFlag then
  begin
    ShowMessage('Paid!!');
    ShowMessage('You are now successfully renting the ' + cmbMansion.Text);
  end else
  begin
    ShowMessage('The mansion you wish to rent has not been found');
  end;
end;

CloseFile(tFile);
end;

procedure TForm4.cmbMansionChange(Sender: TObject);
begin
lblCost.Caption:=FloatToStrF(objMansions.getRent(cmbMansion.Items[cmbMansion.ItemIndex]),ffCurrency,8,2);
end;

end.
