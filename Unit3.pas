unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TOrtu = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt10: TEdit;
    dbgrdortu: TDBGrid;
    edt9: TEdit;
    dsOrtu: TDataSource;
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
    procedure dbgrdortuCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ortu: TOrtu;

implementation

uses
  Menu;

{$R *.dfm}

procedure TOrtu.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
 edt6.Clear;
 edt7.Clear;
 edt8.Clear;
 edt9.Clear;
 edt10.Clear;
end;

procedure TOrtu.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;
 edt6.Enabled:= True;
 edt7.Enabled:= True;
 edt8.Enabled:= True;
 edt9.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TOrtu.btn2Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into ortu values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from ortu');
 ZQuery1.Open;
 posisiawal;
end;

procedure TOrtu.btn3Click(Sender: TObject);
begin
   ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update ortu set nik= "'+edt2.Text+'", nama_ortu="'+edt3.Text+'", pendidikan="'+edt4.Text+'", pekerjaan="'+edt5.Text+'", telp="'+edt6.Text+'", alamat="'+edt7.Text+'", jenis_kelamin="'+edt8.Text+'", agama="'+edt9.Text+'", id_active="'+edt10.Text+'"where ortu.id="'+edt1.Text+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
end;

procedure TOrtu.btn4Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from ortu where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from ortu');
   ZQuery1.Open;
   posisiawal;
end;

procedure TOrtu.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TOrtu.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; edt8.Text:= ''; edt9.Text:= '';
 edt10.Text:= '';
end;

procedure TOrtu.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:=True;
 edt5.Enabled:=True;
 edt6.Enabled:=True;
 edt7.Enabled:=True;
 edt8.Enabled:=True;
 edt9.Enabled:=True;
 edt10.Enabled:=True;
end;

procedure TOrtu.posisiawal;
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
 edt7.Enabled:=False;
 edt8.Enabled:=False;
 edt9.Enabled:=False;
 edt10.Enabled:=False;
end;

procedure TOrtu.dbgrdortuCellClick(Column: TColumn);
begin
 edt1.Text:=ZQuery1.FieldList[0].AsString;
  edt2.Text:=ZQuery1.FieldList[1].AsString;
  edt3.Text:=ZQuery1.FieldList[2].AsString;
  edt4.Text:=ZQuery1.FieldList[3].AsString;
  edt5.Text:=ZQuery1.FieldList[4].AsString;
  edt6.Text:=ZQuery1.FieldList[5].AsString;
  edt7.Text:=ZQuery1.FieldList[6].AsString;
  edt8.Text:=ZQuery1.FieldList[7].AsString;
  edt9.Text:=ZQuery1.FieldList[8].AsString;
  edt10.Text:=ZQuery1.FieldList[9].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;
  edt7.Enabled:=True;
  edt8.Enabled:=True;
  edt9.Enabled:=True;
  edt10.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TOrtu.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; edt8.Text:= ''; edt9.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;
 edt7.Enabled:=False;
 edt8.Enabled:=False;
 edt9.Enabled:=False;
 edt10.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

end.
