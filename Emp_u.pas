unit Emp_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,TeekayDB_u, AgentRequests_u;

type
  TForm6 = class(TForm)
    dbgrdProp: TDBGrid;
    lblProp: TLabel;
    lblClient: TLabel;
    dbgrdClient: TDBGrid;
    btnAddP: TButton;
    btnAddC: TButton;
    btnUpdateP: TButton;
    btnUpdateC: TButton;
    btnDeleteC: TButton;
    btnDeleteP: TButton;
    btnSort: TButton;
    cmbSort: TComboBox;
    lblSortBy: TLabel;
    cmbSort1: TComboBox;
    lblSort: TLabel;
    btnSort1: TButton;
    btnNext: TButton;
    btnPrevious: TButton;
    btnFirst: TButton;
    btnLast: TButton;
    cmbTable: TComboBox;
    lblManipulate: TLabel;
    btnViewRequest: TButton;
    cmbField1: TComboBox;
    cmbField2: TComboBox;
    btnClose: TButton;
    procedure btnFirstClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnViewRequestClick(Sender: TObject);
    procedure btnAddCClick(Sender: TObject);
    procedure btnAddPClick(Sender: TObject);
    procedure btnDeleteCClick(Sender: TObject);
    procedure btnDeletePClick(Sender: TObject);
    procedure btnUpdatePClick(Sender: TObject);
    procedure btnUpdateCClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
    procedure btnSort1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btnAddCClick(Sender: TObject);
var
sName,sUser,sPassword,sID:string;
begin
sName:=InputBox('Name','Please enter the name of the client','');
sUser:=InputBox('Username','Please enter the username of the client','');
sPassword:=InputBox('Password','Please enter the image name of the client','');
sID:=InputBox('ID Number','Please enter the client''s ID number','');

//Add to database
dmTeekay.tblClients.Insert;
dmTeekay.tblClients['Name']:=sName;
dmTeekay.tblClients['Username']:=sUser;
dmTeekay.tblClients['Password']:=sPassword;
dmTeekay.tblClients['ID Number']:=sID;
dmTeekay.tblClients.Post;
ShowMessage('Client Added!');

end;

procedure TForm6.btnAddPClick(Sender: TObject);
var
sName,sAddress,sImage:string;
rCost:Real;
begin
sName:=InputBox('','Please enter the name of the property','');
sAddress:=InputBox('','Please enter the address of the property','');
sImage:=InputBox('','Please enter the image name of the property','');
rCost:=StrToFloat(InputBox('','Please enter the rent cost of the property',''));

//Add to database
dmTeekay.qryTeekay.Insert;
dmTeekay.qryTeekay['Property Name']:=sName;
dmTeekay.qryTeekay['Address']:=sAddress;
dmTeekay.qryTeekay['Picture']:=sImage;
dmTeekay.qryTeekay['Rent Cost']:=rCost;
dmTeekay.qryTeekay.Post;
end;

procedure TForm6.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm6.btnDeleteCClick(Sender: TObject);
begin
dmTeekay.dsClients.DataSet:=dmTeekay.tblClients;
dmTeekay.tblClients.Delete;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertInfo');
dmTeekay.qryTeekay.Open;
end;

procedure TForm6.btnDeletePClick(Sender: TObject);
begin
dmTeekay.dsClients.DataSet:=dmTeekay.tblClients;
dbgrdClient.DataSource:=dmTeekay.dsClients;
dmTeekay.tblTeekay.Delete;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertInfo');
dmTeekay.qryTeekay.Open;
end;

procedure TForm6.btnFirstClick(Sender: TObject);
begin
if cmbTable.Text = 'tblPropertyInfo' then
begin
  dmTeekay.dsClients.DataSet:=dmTeekay.tblClients;
  dmTeekay.qryTeekay.First;
end else if cmbTable.Text = 'tblClients' then
         begin
           dmTeekay.tblClients.First;
         end;
end;

procedure TForm6.btnLastClick(Sender: TObject);
begin
if cmbTable.Text = 'tblPropertyInfo' then
begin
  dmTeekay.qryTeekay.Last
end else if cmbTable.Text = 'tblClients' then
         begin
           dmTeekay.tblClients.Last;
         end;
end;

procedure TForm6.btnNextClick(Sender: TObject);
begin
if cmbTable.Text = 'tblPropertyInfo' then
begin
  dmTeekay.qryTeekay.Next;
end else if cmbTable.Text = 'tblClients' then
         begin
           dmTeekay.tblClients.Next;
         end;
end;

procedure TForm6.btnPreviousClick(Sender: TObject);
begin
if cmbTable.Text = 'tblPropertyInfo' then
begin
  dmTeekay.qryTeekay.Prior;
end else if cmbTable.Text = 'tblClients' then
         begin
           dmTeekay.tblClients.Prior;
         end;
end;

procedure TForm6.btnSort1Click(Sender: TObject);
begin
//dmTeekay.dsClients.DataSet:=dmTeekay.qryTeekay;
//dmTeekay.qryTeekay.SQL.Clear;
//dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblClient ORDER BY [' + cmbSort1.Items[cmbSort1.ItemIndex] + '] ASC');
//dmTeekay.qryTeekay.Open;
//dbgrdClient.DataSource:=dmTeekay.dsClients;
dmTeekay.tblClients.Sort:='[' + cmbSort1.Items[cmbSort1.ItemIndex] + '] ASC';
end;

procedure TForm6.btnSortClick(Sender: TObject);
begin
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo ORDER BY [' + cmbSort.Items[cmbSort.ItemIndex] + '] ASC');
dmTeekay.qryTeekay.Open;
dbgrdProp.DataSource:=dmTeekay.dsTeekay;
end;

procedure TForm6.btnUpdateCClick(Sender: TObject);
var
sUpdate:string;
begin
sUpdate:=InputBox('','What do you want to update the record into','');
if cmbField2.ItemIndex = null then
begin
  ShowMessage('Please select a field to update');
end else
begin
  dmTeekay.tblClients.Edit;
  dmTeekay.tblClients[cmbField2.Items[cmbField2.ItemIndex]]:=sUpdate;
end;

dmTeekay.tblClients.Post;

end;

procedure TForm6.btnUpdatePClick(Sender: TObject);
var
sUpdate:string;
begin
dmTeekay.qryTeekay.Edit;
sUpdate:=InputBox('','What do you want to update the record into','');
if cmbField1.Items[cmbField1.ItemIndex] = 'Rent Cost' then
begin
  dmTeekay.qryTeekay[cmbField1.Items[cmbField1.ItemIndex]]:=StrToFloat(sUpdate);
end else if cmbField1.ItemIndex = null then
         begin
         ShowMessage('Please select a field to update');
end else
begin
  dmTeekay.qryTeekay[cmbField1.Items[cmbField1.ItemIndex]]:=sUpdate;
end;
dmTeekay.qryTeekay.Post;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID IS null');
dmTeekay.qryTeekay.Open;
end;

procedure TForm6.btnViewRequestClick(Sender: TObject);
begin
Form7.Show;
end;

end.
