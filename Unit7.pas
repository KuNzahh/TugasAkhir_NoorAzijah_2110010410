unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  THubungan = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    Label4: TLabel;
    edt6: TEdit;
    dbgrduser: TDBGrid;
    dshubungan: TDataSource;
    ZQuery1: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure editenabled;
    procedure editclear;
    procedure dbgrduserCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hubungan: THubungan;

implementation

uses
  Menu;

{$R *.dfm}

procedure THubungan.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
 edt6.Clear;
end;

procedure THubungan.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;
 edt6.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure THubungan.btn2Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into hubungan values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from hubungan');
 ZQuery1.Open;
 posisiawal;
end;

procedure THubungan.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update hubungan set status_hub_anak="'+edt4.Text+'", keterangan="'+edt5.Text+'", status_ortu="'+edt6.Text+'" where hubungan.id="'+edt1.Text+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from hubungan');
  ZQuery1.Open;
end;

procedure THubungan.btn4Click(Sender: TObject);
begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from hubungan where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from hubungan');
   ZQuery1.Open;
   posisiawal;
end;

procedure THubungan.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure THubungan.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
end;

procedure THubungan.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:=True;
 edt5.Enabled:=True;
 edt6.Enabled:=True;
end;

procedure THubungan.posisiawal;
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
 edt6.Enabled:=False;
end;

procedure THubungan.dbgrduserCellClick(Column: TColumn);
begin
 edt1.Text:=ZQuery1.FieldList[0].AsString;
  edt2.Text:=ZQuery1.FieldList[1].AsString;
  edt3.Text:=ZQuery1.FieldList[2].AsString;
  edt4.Text:=ZQuery1.FieldList[3].AsString;
  edt5.Text:=ZQuery1.FieldList[4].AsString;
  edt6.Text:=ZQuery1.FieldList[5].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= false;
  edt3.Enabled:= false;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure THubungan.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

end.
