unit Search_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Spin,TeekayDB_u, Buttons,Request_u;

type
  TForm8 = class(TForm)
    dbgrdSearch: TDBGrid;
    lblName: TLabel;
    cmbSearch: TComboBox;
    lblMinCost: TLabel;
    lblMaxCost: TLabel;
    spnMin: TSpinEdit;
    spnMax: TSpinEdit;
    lblPName: TLabel;
    edtName: TEdit;
    btnSearch: TButton;
    btnHelp: TBitBtn;
    btnClose: TBitBtn;
    btnBook: TButton;
    procedure btnSearchClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnBookClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.btnBookClick(Sender: TObject);
begin
Form5.edtPName.Text:=dmTeekay.qryTeekay.FieldByName('Property Name').AsString;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT [Client Name] AS Agent FROM tblClient WHERE Username LIKE "Emp%"');
dmTeekay.qryTeekay.Active:=True;
dmTeekay.dsClients.DataSet:=dmTeekay.qryTeekay;
//Form5.dbgrdMansions.Fields[0].Visible:=False;
//Form5.dbgrdMansions.Fields[1].Visible:=True;
//Form5.dbgrdMansions.Fields[2].Visible:=False;
//Form5.dbgrdMansions.Fields[3].Visible:=False;
//Form5.dbgrdMansions.Fields[4].Visible:=False;
//Form5.dbgrdMansions.Fields[5].Visible:=False;
Form5.dbgrdMansions.DataSource:=dmTeekay.dsClients;
Form5.Show;
end;

procedure TForm8.btnCloseClick(Sender: TObject);
begin
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID IS null');
dmTeekay.qryTeekay.Open;
Form8.Hide;
end;

procedure TForm8.btnHelpClick(Sender: TObject);
begin
ShowMessage('Select the manner you wish to search by and enter the details then click ''Search''');
end;

procedure TForm8.btnSearchClick(Sender: TObject);
begin
if cmbSearch.ItemIndex = 0 then
begin
  //Name Search
  dmTeekay.qryTeekay.SQL.Clear;
  dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE [Property Name] = "' + edtName.Text + '" AND UserID IS null');
  dmTeekay.qryTeekay.Active:=True;
  dbgrdSearch.DataSource:=dmTeekay.dsTeekay;
end else if cmbSearch.ItemIndex = 1 then
         begin
           //Cost Search
           dmTeekay.qryTeekay.SQL.Clear;
           dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE [Rent Cost] BETWEEN ' + IntToStr(spnMin.Value) + 'AND ' + IntToStr(spnMax.Value) + 'AND UserID IS null');
           dmTeekay.qryTeekay.Active:=True;
           dbgrdSearch.DataSource:=dmTeekay.dsTeekay;
         end;
end;

end.
