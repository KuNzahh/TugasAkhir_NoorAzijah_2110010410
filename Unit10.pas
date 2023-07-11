unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls;

type
  TDaftar = class(TForm)
    lbl3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    cbb1: TComboBox;
    btn2: TButton;
    dsuser: TDataSource;
    ZQuery1: TZQuery;
    lbl: TLabel;
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Daftar: TDaftar;

implementation

uses
  Menu, Unit9;

{$R *.dfm}

procedure TDaftar.btn2Click(Sender: TObject);
begin
 if edt1.Text ='' then
 begin
 ShowMessage('USERNAME TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
  end else

  begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from user');
 ZQuery1.Open;
 if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (cbb1.Text ='') then
  begin
  ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if edt1.Text = ZQuery1.Fields[1].AsString then
  begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end
end;
hide;
login.show;

end;

end.
