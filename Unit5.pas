unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TSemester = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
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
    edt9: TEdit;
    dbgrdkelas: TDBGrid;
    Label2: TLabel;
    dssemster: TDataSource;
    ZQuery1: TZQuery;
    cbb1: TComboBox;
    frxDBSemester: TfrxDBDataset;
    frxRsemster: TfrxReport;
    btn6: TButton;
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
    procedure dbgrdkelasCellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Semester: TSemester;
  id :String;

implementation

uses
  Menu;

{$R *.dfm}

procedure TSemester.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
 edt6.Clear;
 edt7.Clear;
 cbb1.Clear;
 edt9.Clear;
end;

procedure TSemester.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TSemester.btn2Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into semester values(null, "'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+cbb1.Text+'","'+edt9.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from semester');
 ZQuery1.Open;
 posisiawal;
end;

procedure TSemester.btn3Click(Sender: TObject);
begin
 ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update semester set siswa_id= "'+edt1.Text+'", point_id="'+edt2.Text+'", wali_id="'+edt3.Text+'", ortu_id="'+edt4.Text+'", kelas_id="'+edt5.Text+'", tanggal="'+edt6.Text+'", semester="'+edt7.Text+'", status="'+cbb1.Text+'", tingkat_kelas="'+edt9.Text+'" where semester.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from semester');
  ZQuery1.Open;
end;

procedure TSemester.btn4Click(Sender: TObject);
begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from semester where id="'+id+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from semester');
   ZQuery1.Open;
   posisiawal;
end;

procedure TSemester.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TSemester.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; cbb1.Text:= ''; edt9.Text:= '';
end;

procedure TSemester.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:=True;
 edt5.Enabled:=True;
 edt6.Enabled:=True;
 edt7.Enabled:=True;
 cbb1.Enabled:=True;
 edt9.Enabled:=True;
end;

procedure TSemester.posisiawal;
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
 cbb1.Enabled:=False;
 edt9.Enabled:=False;
end;

procedure TSemester.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; cbb1.Text:= ''; edt9.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;
 edt7.Enabled:=False;
 cbb1.Enabled:=False;
 edt9.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TSemester.dbgrdkelasCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  edt7.Text:=ZQuery1.FieldList[7].AsString;
  cbb1.Text:=ZQuery1.FieldList[8].AsString;
  edt9.Text:=ZQuery1.FieldList[9].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;
  edt7.Enabled:=True;
  cbb1.Enabled:=True;
  edt9.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TSemester.btn6Click(Sender: TObject);
begin
 frxRsemster.ShowReport();
end;

end.
