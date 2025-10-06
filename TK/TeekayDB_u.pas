unit TeekayDB_u;

interface

uses
  SysUtils, Classes,ADODB,DB;

type
  TdmTeekay = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    conTeekay:TADOConnection;
    tblTeekay:TADOTable;
    tblClients:TADOTable;
    qryTeekay:TADOQuery;
    dsTeekay:TDataSource;
    dsClients:TDataSource;
  end;

var
  dmTeekay: TdmTeekay;

implementation

{$R *.dfm}

uses
Apply_u,Emp_u;

procedure TdmTeekay.DataModuleCreate(Sender: TObject);
begin
tblClients:=TADOTable.Create(Self);
conTeekay:=TADOConnection.Create(Self);
tblTeekay:=TADOTable.Create(Self);
dsTeekay:=TDataSource.Create(Self);
dsClients:=TDataSource.Create(Self);
qryTeekay:=TADOQuery.Create(Self);

conTeekay.Close;
conTeekay.ConnectionString:='Provider = Microsoft.ACE.OLEDB.12.0;Data Source = ' + ExtractFilePath(ParamStr(0)) + 'MansionsDB.accdb; Persist Security Info = False';
conTeekay.LoginPrompt:=False;
tblTeekay.Close;
tblClients.Close;
conTeekay.Open;
tblTeekay.Connection:=conTeekay;
tblClients.Connection:=conTeekay;
tblClients.TableName:='tblClient';
tblTeekay.TableName:='tblPropertyInfo';
tblTeekay.Active:=True;
tblClients.Active:=True;
tblTeekay.Open;
tblClients.Open;
qryTeekay.Connection:=conTeekay;

dsTeekay.DataSet:=qryTeekay;
dsClients.DataSet:=tblClients;

qryTeekay.SQL.Clear;
qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID IS null');
qryTeekay.Open;

end;

end.
