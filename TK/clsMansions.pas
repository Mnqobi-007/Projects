unit clsMansions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,TeekayDB_u;

type
TMansions = class(TObject)

private
fName:string;
fUser:string;
fPassword:string;
fID:string;
fPropertyName:string;
fCost:Real;

public
function CheckValid(sUsername:string; sPassword:string;sID:string): Boolean;
function getRent(sPropertyName:string): Real;
procedure LimitUser;
procedure setLogged(sUser,sPassword:string);

end;

implementation

{ TMansions }

uses
RentPay_u;

function TMansions.CheckValid(sUsername, sPassword, sID: string): Boolean;
begin
Result:=False;
dmTeekay.tblClients.First;
while not dmTeekay.tblClients.Eof do
begin
  if (sID = dmTeekay.tblClients['IDNumber']) and (sUsername = dmTeekay.tblClients['Username']) and (sPassword = dmTeekay.tblClients['Password']) then
  begin
    Result:=True;
  end;
  dmTeekay.tblClients.Next;
end;

end;

function TMansions.getRent(sPropertyName: string): Real;
begin
dmTeekay.tblTeekay.First;
while not dmTeekay.tblTeekay.Eof do
begin
  if sPropertyName = dmTeekay.tblTeekay['Property Name'] then
  begin
    Result:=dmTeekay.tblTeekay['Rent Cost'];
  end;
  dmTeekay.tblTeekay.Next;
end;
end;

procedure TMansions.LimitUser;
begin
if Pos('Emp',dmTeekay.tblClients['Username']) > 0 then
begin
  //Full access
  dmTeekay.qryTeekay.SQL.Clear;
  dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo');
  dmTeekay.qryTeekay.Open;
  Form2.btnPay.Caption := 'Pay rent for a mansion';
  Form2.btnApply.Caption:='Apply for renting a mansion';
end else if Pos('Emp',dmTeekay.tblClients['Username']) = 0 then
         begin
           //Client access
           dmTeekay.qryTeekay.SQL.Clear;
           dmTeekay.qryTeekay.SQL.Add('SELECT * FROM tblPropertyInfo WHERE UserID = null');
           dmTeekay.qryTeekay.Open;
           Form2.btnPay.Caption:='Manage Mansion details';
           Form2.btnApply.Caption:='View Appointments';
         end;
end;

procedure TMansions.setLogged(sUser, sPassword: string);
var
tFile:TextFile;
sName,sID:string;
begin
dmTeekay.tblClients.First;
while not dmTeekay.tblClients.Eof do
begin
  if dmTeekay.tblClients['Username'] = sUser then
  begin
    sName:=dmTeekay.tblClients['Client Name'];
    sID:=dmTeekay.tblClients['UserID'];
  end;
  dmTeekay.tblClients.Next;
end;
AssignFile(tFile,'Clients.txt');
Rewrite(tFile);
Writeln(tFile,sID);                               //UserID
Writeln(tFile,sName);                             //Name
Writeln(tFile,sPassword);                         //Password
CloseFile(tFile);
end;

end.
