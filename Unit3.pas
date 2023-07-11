unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TOrtu = class(TForm)
    lbl1: TLabel;
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
    edt8: TEdit;
    edt9: TEdit;
    dsOrtu: TDataSource;
    ZQuery1: TZQuery;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    frxDBortu: TfrxDBDataset;
    frxRortu: TfrxReport;
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
    procedure dbgrdortuCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ortu: TOrtu;
  id : string;

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
 cbb1.Clear;
 edt8.Clear;
 edt9.Clear;
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
 cbb1.Enabled:= True;
 edt8.Enabled:= True;
 edt9.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure TOrtu.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end else
  if edt5.Text ='' then
  begin
  ShowMessage('NO TELEPON TIDAK BOLEH KOSONG!');
  end else

  begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into ortu values(null, "'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from ortu');
 ZQuery1.Open;

 if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text ='')or (cbb1.Text ='')or (edt8.Text ='') then
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

procedure TOrtu.btn3Click(Sender: TObject);
begin
   ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update ortu set nik= "'+edt1.Text+'", nama_ortu="'+edt2.Text+'", pendidikan="'+edt3.Text+'", pekerjaan="'+edt4.Text+'", telp="'+edt5.Text+'", alamat="'+edt6.Text+'", jenis_kelamin="'+cbb1.Text+'", agama="'+edt8.Text+'", id_active="'+edt9.Text+'"where ortu.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
end;

procedure TOrtu.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
 ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from ortu where id="'+id+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from ortu');
   ZQuery1.Open;
   end else
  Begin
  ShowMessage('DATA BATAL DIHAPUS !');
  posisiawal;
  end
end;

procedure TOrtu.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TOrtu.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; edt3.Text:= '';
 edt4.Text:= ''; edt5.Text:= ''; edt6.Text:= '';
 cbb1.Text:= ''; edt8.Text:= ''; edt9.Text:= '';
end;

procedure TOrtu.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 edt3.Enabled:= True;
 edt4.Enabled:=True;
 edt5.Enabled:=True;
 edt6.Enabled:=True;
 cbb1.Enabled:=True;
 edt8.Enabled:=True;
 edt9.Enabled:=True;
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
 cbb1.Enabled:=False;
 edt8.Enabled:=False;
 edt9.Enabled:=False;
end;

procedure TOrtu.dbgrdortuCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
 edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  cbb1.Text:=ZQuery1.FieldList[7].AsString;
  edt8.Text:=ZQuery1.FieldList[8].AsString;
  edt9.Text:=ZQuery1.FieldList[9].AsString;


  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;
  cbb1.Enabled:=True;
  edt8.Enabled:=True;
  edt9.Enabled:=True;

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
 cbb1.Text:= ''; edt8.Text:= ''; edt9.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 edt3.Enabled:= False;
 edt4.Enabled:=False;
 edt5.Enabled:=False;
 edt6.Enabled:=False;
 cbb1.Enabled:=False;
 edt8.Enabled:=False;
 edt9.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TOrtu.dbgrd1CellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
 edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  cbb1.Text:=ZQuery1.FieldList[7].AsString;
  edt8.Text:=ZQuery1.FieldList[8].AsString;
  edt9.Text:=ZQuery1.FieldList[9].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:=True;
   edt5.Enabled:=True;
   edt6.Enabled:=True;
   cbb1.Enabled:=True;
   edt8.Enabled:=True;
   edt9.Enabled:=True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure TOrtu.btn6Click(Sender: TObject);
begin
 frxRortu.ShowReport();
end;

procedure TOrtu.btn7Click(Sender: TObject);
begin
 ortu.Close;
end;

end.
