unit RentPay_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Apply_u,Pay_u,TeekayDB_u, Buttons,ShellAPI,AgentRequests_u,Emp_u;

type
  TForm2 = class(TForm)
    lblTeekay: TLabel;
    btnPay: TButton;
    btnApply: TButton;
    btnHelp: TBitBtn;
    blnhntHint: TBalloonHint;
    lbl1: TLabel;
    lblClick: TLabel;
    btnExit: TBitBtn;
    procedure btnApplyClick(Sender: TObject);
    procedure btnPayClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure lblClickClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnApplyClick(Sender: TObject);
var
tFile:TextFile;
sLine,sName,sPName,sAgent,sBookedDay:string;
begin
if btnApply.Caption = 'Apply for renting a mansion' then
begin
dmTeekay.dsTeekay.DataSet:=dmTeekay.qryTeekay;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID IS null');
dmTeekay.qryTeekay.Active:=True;
Form3.dbgrdMansions.DataSource:=dmTeekay.dsTeekay;
Form3.Show;
end else if btnApply.Caption = 'View Appointments' then
         begin
           //Appointments
           AssignFile(tFile,'Agent.txt');
           Reset(tFile);
           while not Eof(tFile) do
           begin
             Readln(tFile,sLine);
             sName:=Copy(sLine,1,Pos('#',sLine) - 1);
             sAgent:=Copy(sLine,Pos('#',sLine) + 1,Pos('$',sLine) - Pos('#',sLine) - 1);
             sPName:=Copy(sLine,Pos('$',sLine) + 1,LastDelimiter('#',sLine) - Pos('$',sLine) - 1);
             sBookedDay:=Copy(sLine,LastDelimiter('#',sLine) + 1);
             Form7.memDisplay.Lines.Clear;
             Form7.memDisplay.Lines.Add('===========================');
             Form7.memDisplay.Lines.Add('Client Name: ' + sName);
             Form7.memDisplay.Lines.Add('Agent Name: ' + sAgent);
             Form7.memDisplay.Lines.Add('Property Name: ' + sPName);
             Form7.memDisplay.Lines.Add('Date of booking: ' + sBookedDay);
           end;
           CloseFile(tFile);
         Form7.Show;
         end;
end;

procedure TForm2.btnExitClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.btnHelpClick(Sender: TObject);
begin
ShowMessage('Enter the button associated to what you wish to do');
end;

procedure TForm2.btnPayClick(Sender: TObject);
var
tFile:TextFile;
sLine:string;
bFlag:Boolean;
begin
if btnPay.Caption = 'Pay rent for a mansion' then
begin
bFlag:=False;
AssignFile(tFile,'Clients.txt');
Reset(tFile);
Readln(tFile,sLine);
CloseFile(tFile);
dmTeekay.tblTeekay.First;
while not dmTeekay.tblTeekay.Eof do
begin
  if dmTeekay.tblTeekay['UserID'] = sLine then
  begin
    bFlag:=True;
    Form4.cmbMansion.Items.Add(dmTeekay.tblTeekay['Property Name']);
  end;
  dmTeekay.tblTeekay.Next;

end;

if bFlag = False then
begin
  ShowMessage('You own no properties at our establishment');
end else
begin
  Form4.Show;
end;
end else if btnPay.Caption = 'Manage Mansion details' then
         begin
           //Edit details
           Form6.dbgrdProp.DataSource:=dmTeekay.dsTeekay;
           dmTeekay.qryTeekay.SQL.Clear;
           dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID IS null');
           dmTeekay.qryTeekay.Open;
           Form6.dbgrdClient.DataSource:=dmTeekay.dsClients;
           Form6.Show;
         end;
end;

procedure TForm2.lblClickClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('file:///'+ExtractFilePath(ParamStr(0))+'My Mansions/web.html'),'','',SW_SHOW);
end;

end.
