unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TWaliKelas = class(TForm)
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
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    dbgrdWaliKelas: TDBGrid;
    ZQuery1: TZQuery;
    dsWaliKelas: TDataSource;
    cbb1: TComboBox;
    cbb2: TComboBox;
    frxDBwalikelas: TfrxDBDataset;
    frxRwali: TfrxReport;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure editenabled;
    procedure editclear;
    procedure dbgrdWaliKelasCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WaliKelas: TWaliKelas;
  id :String;

implementation

uses
  Menu;

{$R *.dfm}

procedure TWaliKelas.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 cbb1.Clear;
 edt4.Clear;
 edt5.Clear;
 edt6.Clear;
 edt7.Clear;
 cbb2.Clear;
end;

procedure TWaliKelas.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 cbb1.Enabled:= True;
 edt4.Enabled:= True;
 edt5.Enabled:= True;
 edt6.Enabled:= True;
 edt7.Enabled:= True;
 cbb2.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TWaliKelas.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('NAMA WALI KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt6.Text ='' then
  begin
  ShowMessage('MATA PELAJARAN TIDAK BOLEH KOSONG!');
  end else

  begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+cbb2.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from wali_kelas');
 ZQuery1.Open;
 if (edt1.Text= '')or (edt2.Text ='')or(cbb1.Text= '')or (edt4.Text ='')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text ='')or (edt7.Text ='')or (cbb2.Text ='') then
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

procedure TWaliKelas.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update wali_kelas set nik= "'+edt1.Text+'", nama="'+edt2.Text+'", jenis_kelamin="'+cbb1.Text+'", pendidikan="'+edt4.Text+'", telp="'+edt5.Text+'", matpel="'+edt6.Text+'", alamat="'+edt7.Text+'", status="'+cbb2.Text+'" where wali_kelas.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from wali_kelas');
  ZQuery1.Open;
end;

procedure TWaliKelas.btn4Click(Sender: TObject);
begin
   if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from wali_kelas where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from wali_kelas');
   ZQuery1.Open;
   end else
  Begin
  ShowMessage('DATA BATAL DIHAPUS !');
  posisiawal;
  end
end;

procedure TWaliKelas.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TWaliKelas.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; cbb1.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; cbb2.Text:= '';
end;

procedure TWaliKelas.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 cbb1.Enabled:= True;
 edt4.Enabled:=True;
   edt5.Enabled:=True;
   edt6.Enabled:=True;
   edt7.Enabled:=True;
   cbb2.Enabled:=True;
end;

procedure TWaliKelas.posisiawal;
begin
  bersih;
 btn1.Enabled:=True;
 btn2.Enabled:=False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
 edt1.Enabled:=False;
 edt2.Enabled:=False;
 cbb1.Enabled:=False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;
 edt7.Enabled:=False;
 cbb2.Enabled:=False;
end;

procedure TWaliKelas.dbgrdWaliKelasCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  cbb1.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  edt7.Text:=ZQuery1.FieldList[7].AsString;
  cbb2.Text:=ZQuery1.FieldList[8].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  edt4.Enabled:=True;
   edt5.Enabled:=True;
   edt6.Enabled:=True;
   edt7.Enabled:=True;
   cbb2.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TWaliKelas.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; cbb1.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 edt7.Text:= ''; cbb2.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 cbb2.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;
 edt7.Enabled:=False;
 cbb2.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TWaliKelas.btn6Click(Sender: TObject);
begin
 frxRwali.ShowReport();
end;

end.
