unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TUser = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    dbgrduser: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    dsuser: TDataSource;
    ZQuery1: TZQuery;
    cbb1: TComboBox;
    frxDBuser: TfrxDBDataset;
    frxRuser: TfrxReport;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure editclear;
    procedure editenabled;
    procedure FormCreate(Sender: TObject);
    procedure dbgrduserCellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  User: TUser;
  id : String;

implementation

uses
  Menu;

{$R *.dfm}

procedure TUser.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 cbb1.Clear;
end;

procedure TUser.btn1Click(Sender: TObject);
begin
  edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 cbb1.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TUser.btn2Click(Sender: TObject);
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
  posisiawal;
  end
end
end;

procedure TUser.btn3Click(Sender: TObject);
begin
 ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update user set username= "'+edt1.Text+'", password="'+edt2.Text+'", level="'+edt3.Text+'", status="'+cbb1.Text+'" where user.id="'+edt1.Text+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from user');
  ZQuery1.Open;
end;

procedure TUser.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
 ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from user where id="'+id+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from user');
   ZQuery1.Open;
   end else
  Begin
  ShowMessage('DATA BATAL DIHAPUS !');
  posisiawal;
  end
end;

procedure TUser.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TUser.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 cbb1.Text:= '';
end;

procedure TUser.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 cbb1.Enabled:=True;
end;

procedure TUser.posisiawal;
begin
  bersih;
 btn1.Enabled:=True;
 btn2.Enabled:=False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
 edt1.Enabled:=False;
 edt2.Enabled:=False;
 edt3.Enabled:=False;
 cbb1.Enabled:=False;
end;

procedure TUser.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 cbb1.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 cbb1.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TUser.dbgrduserCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;
  cbb1.Text:=ZQuery1.FieldList[4].AsString;


  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  cbb1.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TUser.btn6Click(Sender: TObject);
begin
 frxRuser.ShowReport();
end;

procedure TUser.btn7Click(Sender: TObject);
begin
 user.Close;
end;

end.
