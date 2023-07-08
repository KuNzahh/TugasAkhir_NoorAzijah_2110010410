unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tpoin = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    Label2: TLabel;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    dbgrduser: TDBGrid;
    dspoin: TDataSource;
    ZQuery1: TZQuery;
    cbb1: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure editclear;
    procedure editenabled;
    procedure dbgrduserCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  poin: Tpoin;
  id : string;

implementation

uses
  Menu;

{$R *.dfm}

procedure Tpoin.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 cbb1.Clear;
end;

procedure Tpoin.btn1Click(Sender: TObject);
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

procedure Tpoin.btn2Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+id+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from poin');
 ZQuery1.Open;
 posisiawal;
end;

procedure Tpoin.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update poin set nama_poin= "'+edt1.Text+'", bobot="'+edt2.Text+'", jenis="'+edt3.Text+'", status="'+cbb1.Text+'" where poin.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin');
  ZQuery1.Open;
end;

procedure Tpoin.btn4Click(Sender: TObject);
begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from poin where id="'+id+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from poin');
   ZQuery1.Open;
   posisiawal;
end;

procedure Tpoin.btn5Click(Sender: TObject);
begin
   posisiawal;
end;

procedure Tpoin.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 cbb1.Text:= '';
end;

procedure Tpoin.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 cbb1.Enabled:=True;
end;

procedure Tpoin.posisiawal;
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

procedure Tpoin.dbgrduserCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;

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

procedure Tpoin.FormCreate(Sender: TObject);
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

end.
