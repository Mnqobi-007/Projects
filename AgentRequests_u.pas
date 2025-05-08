unit AgentRequests_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm7 = class(TForm)
    lblRequests: TLabel;
    memDisplay: TMemo;
    btnBack: TBitBtn;
    btnHelp: TBitBtn;
    procedure btnBackClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btnBackClick(Sender: TObject);
begin
Form7.Hide;
end;

procedure TForm7.btnHelpClick(Sender: TObject);
begin
ShowMessage('Here you get to see the requests you have and had by customers');
end;

end.
