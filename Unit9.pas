unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TLogin = class(TForm)
    lbl1: TLabel;
    Label1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    ZQuery1: TZQuery;
    dsuser: TDataSource;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses
  Menu;

{$R *.dfm}

procedure TLogin.btn1Click(Sender: TObject);
begin
with ZQuery1 do begin
 SQL.Clear;
 SQL.Add('Select*from user where username='+QuotedStr(edt1.Text)) ;
 open;
end;

 if ZQuery1.RecordCount=0
 then
 Application.MessageBox('Maaf username tidak ditemukan', 'informasi', MB_OK or MB_ICONINFORMATION)
 else
 begin
 if  ZQuery1.FieldByName('password').AsString<>edt2.Text
 then
 Application.MessageBox('Password salah coba lagi', 'error', MB_OK or MB_ICONERROR)
 else
 begin
   hide;
   MenuAwal.Show;
 end;

end;

end;
end.
