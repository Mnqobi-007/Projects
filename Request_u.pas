unit Request_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,TeekayDB_u;

type
  TForm5 = class(TForm)
    lblName: TLabel;
    lblArea: TLabel;
    lblCost: TLabel;
    dbgrdMansions: TDBGrid;
    edtName: TEdit;
    edtNumber: TEdit;
    edtMail: TEdit;
    btnSelect: TButton;
    btnHelp: TBitBtn;
    blnhntHint: TBalloonHint;
    lblPName: TLabel;
    edtPName: TEdit;
    btnBack: TButton;
    procedure btnHelpClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure dbgrdMansionsCellClick(Column: TColumn);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnBackClick(Sender: TObject);
begin
Form5.Hide;
end;

procedure TForm5.btnHelpClick(Sender: TObject);
begin
ShowMessage('Select an agent then choose to request via email, call or via the app');
end;

procedure TForm5.btnSelectClick(Sender: TObject);
var
tFile,tName:TextFile;
sLine,sName:string;
begin
if MessageDlg('Are you sure you want to request this agent using the app',mtInformation,mbYesNo,0) = mrYes then
 begin
   AssignFile(tFile,'Agent.txt');         //Agent
   AssignFile(tName,'Clients.txt');      //Account logged in
   Reset(tName);
   Append(tFile);
   Readln(tName,sLine);  //AccountID
   Readln(tName,sLine);  //Name of logged person
   sName:=sLine + '#' + edtName.Text + '$' + edtPName.Text + '#' + DateToStr(Now);  //Write request
   Writeln(tFile,sName);
   CloseFile(tFile);
   CloseFile(tName);
   ShowMessage('Agent requested!!');
 end;

end;

procedure TForm5.dbgrdMansionsCellClick(Column: TColumn);
var
tNum:TextFile;
sLine,sNum:string;
begin
AssignFile(tNum,'Numbers.txt');
Reset(tNum);
while not Eof(tNum) do
begin
  Readln(tNum,sLine);
  if Copy(sLine,1,Pos('$',sLine) - 1) = dmTeekay.qryTeekay.FieldByName('Agent_Name').AsString then
  begin
    sNum:=Copy(sLine,Pos('$',sLine) + 1);
  end;

end;
edtName.Text:=dmTeekay.qryTeekay.FieldByName('Agent_Name').AsString;
edtMail.Text:=dmTeekay.qryTeekay.FieldByName('Username').AsString + '@gmail.com';
edtNumber.Text:=sNum;
CloseFile(tNum);
end;

end.
