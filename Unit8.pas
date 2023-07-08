unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TUser = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
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
    edt4: TEdit;
    edt5: TEdit;
    dsuser: TDataSource;
    ZQuery1: TZQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  User: TUser;

implementation

uses
  Menu;

{$R *.dfm}

procedure TUser.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
end;

procedure TUser.btn1Click(Sender: TObject);
begin
  edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TUser.btn2Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into user values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from user');
 ZQuery1.Open;
 posisiawal;
end;

procedure TUser.btn3Click(Sender: TObject);
begin
 ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update user set username= "'+edt2.Text+'", password="'+edt3.Text+'", level="'+edt4.Text+'", status="'+edt5.Text+'" where user.id="'+edt1.Text+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from user');
  ZQuery1.Open;
end;

procedure TUser.btn4Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from user where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from user');
   ZQuery1.Open;
   posisiawal;
end;

procedure TUser.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TUser.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= '';
end;

procedure TUser.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:=True;
 edt5.Enabled:=True;
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
 edt4.Enabled:=False;
 edt5.Enabled:=False;
end;

procedure TUser.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TUser.dbgrduserCellClick(Column: TColumn);
begin
  edt1.Text:=ZQuery1.FieldList[0].AsString;
  edt2.Text:=ZQuery1.FieldList[1].AsString;
  edt3.Text:=ZQuery1.FieldList[2].AsString;
  edt4.Text:=ZQuery1.FieldList[3].AsString;
  edt5.Text:=ZQuery1.FieldList[4].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

end.
