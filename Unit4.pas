unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls;

type
  TSiswa = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    Label1: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    Label2: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    dbgrdsiswa: TDBGrid;
    ZQuery1: TZQuery;
    dsSiswa: TDataSource;
    edt8: TEdit;
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
    procedure dbgrdsiswaCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Siswa: TSiswa;

implementation

uses
  Menu;

{$R *.dfm}

procedure TSiswa.bersih;
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
 edt11.Clear;
 edt12.Clear;
end;

procedure TSiswa.btn1Click(Sender: TObject);
begin
  edt1.Clear;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;
 edt6.Enabled:= True;
 edt7.Enabled:= True;
 edt8.Enabled:= True;
 edt9.Enabled:= True;
 edt10.Enabled:= True;
 edt11.Enabled:= True;
 edt12.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TSiswa.btn2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into siswa values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+edt12.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from siswa');
 ZQuery1.Open;
 posisiawal;
end;

procedure TSiswa.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update siswa set nis= "'+edt2.Text+'", nisn="'+edt3.Text+'", nama_siswa="'+edt4.Text+'", nik="'+edt5.Text+'", tmpt_lahir="'+edt6.Text+'", tgl_lahir="'+edt7.Text+'", jenis_kelamin="'+edt8.Text+'", alamat="'+edt9.Text+'", telp="'+edt10.Text+'", hp="'+edt11.Text+'", status="'+edt12.Text+'"where siswa.id="'+edt1.Text+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from siswa');
  ZQuery1.Open;
end;

procedure TSiswa.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from siswa where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from siswa');
   ZQuery1.Open;
   posisiawal;
end;

procedure TSiswa.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TSiswa.posisiawal;
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
 edt11.Enabled:=False;
 edt12.Enabled:=False;
end;

procedure TSiswa.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; edt8.Text:= ''; edt9.Text:= '';
 edt10.Text:= ''; edt11.Text:= ''; edt12.Text:= '';

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
 edt11.Enabled:=False;
 edt12.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;

end;

procedure TSiswa.dbgrdsiswaCellClick(Column: TColumn);
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
  edt11.Text:=ZQuery1.FieldList[10].AsString;
  edt12.Text:=ZQuery1.FieldList[11].AsString;

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
   edt11.Enabled:=True;
   edt12.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TSiswa.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; edt8.Text:= ''; edt9.Text:= '';
 edt10.Text:= ''; edt11.Text:= ''; edt12.Text:= '';
end;

procedure TSiswa.editenabled;
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
   edt11.Enabled:=True;
   edt12.Enabled:=True;
end;

end.
