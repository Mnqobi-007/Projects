unit Apply_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids,Request_u, Buttons,TeekayDB_u, jpeg,Search_u;

type
  TForm3 = class(TForm)
    dbgrdMansions: TDBGrid;
    imgMansion: TImage;
    lblName: TLabel;
    lblCost: TLabel;
    edtName: TEdit;
    edtCost: TEdit;
    btnSelect: TButton;
    btnHelp: TBitBtn;
    blnhntHint: TBalloonHint;
    btnSearch: TButton;
    btnClose: TBitBtn;
    procedure btnSelectClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure dbgrdMansionsCellClick(Column: TColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnCloseClick(Sender: TObject);
begin
Form3.Hide;
end;

procedure TForm3.btnHelpClick(Sender: TObject);
begin
ShowMessage('Select a property from the grid to view or pick to rent');
ShowMessage('If you don''t know the property name, click on the ''Search'' button');
end;

procedure TForm3.btnSearchClick(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm3.btnSelectClick(Sender: TObject);
begin
//Request
Form5.edtPName.Text:=dmTeekay.qryTeekay.FieldByName('Property Name').AsString;
dmTeekay.qryTeekay.SQL.Clear;
dmTeekay.qryTeekay.SQL.Add('SELECT Username,[Client Name] AS Agent_Name FROM tblClient WHERE Username LIKE "Emp%"');
dmTeekay.qryTeekay.Active:=True;
dmTeekay.dsClients.DataSet:=dmTeekay.qryTeekay;
Form5.dbgrdMansions.DataSource:=dmTeekay.dsClients;
Form5.dbgrdMansions.Columns[0].Visible:=False;
Form5.Show;
end;

procedure TForm3.dbgrdMansionsCellClick(Column: TColumn);
begin
edtCost.Text:=dmTeekay.qryTeekay.FieldByName('Rent Cost').AsString;
edtName.Text:=dmTeekay.qryTeekay.FieldByName('Property Name').AsString;
//edtArea.Text:=dmTeekay.tblTeekay['Area'];
imgMansion.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'My Mansions/' + dmTeekay.qryTeekay.FieldByName('Picture').AsString);
end;

end.
