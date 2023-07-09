unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  THubungan = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbgrduser: TDBGrid;
    dshubungan: TDataSource;
    ZQuery1: TZQuery;
    edt4: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edt1: TEdit;
    edt2: TEdit;
    frxDBhubungan: TfrxDBDataset;
    frxRhubungan: TfrxReport;
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
    procedure dbgrduserCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hubungan: THubungan;
  id : string;

implementation

uses
  Menu;

{$R *.dfm}

procedure THubungan.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 cbb1.Clear;
 edt4.Clear;
 cbb2.Clear;
end;

procedure THubungan.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;
 cbb1.Enabled:= True;
 edt4.Enabled:= True;
 cbb2.Enabled:= True;


 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:=True;
 btn5.Enabled:=True;
end;

procedure THubungan.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
  end else
  if cbb1.Text ='' then
  begin
  ShowMessage('STATUS HUBUNGAN TIDAK BOLEH KOSONG!');
  end else
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into hubungan values(null, "'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+cbb2.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from hubungan');
 ZQuery1.Open;
 if (edt1.Text= '')or (edt2.Text ='')or(cbb1.Text= '')or (edt4.Text ='')or (edt4.Text ='')or (cbb2.Text ='') then
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

procedure THubungan.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update hubungan set siswa_id="'+edt1.Text+'", ortu_id="'+edt2.Text+'", status_hub_anak="'+cbb1.Text+'", keterangan="'+edt4.Text+'", status_ortu="'+cbb2.Text+'" where hubungan.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from hubungan');
  ZQuery1.Open;
end;

procedure THubungan.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from hubungan where id="'+id+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from hubungan');
   ZQuery1.Open;
   end else
  Begin
  ShowMessage('DATA BATAL DIHAPUS !');
  posisiawal;
  end
end;

procedure THubungan.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure THubungan.editclear;
begin
 edt1.Text:= ''; edt2.Text:= ''; cbb1.Text:= '';
 edt4.Text:= ''; cbb2.Text:= '';
end;

procedure THubungan.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
 cbb1.Enabled:= True;
 edt4.Enabled:=True;
 cbb2.Enabled:=True;
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
 cbb1.Enabled:=False;
 edt4.Enabled:=False;
 cbb2.Enabled:=False;
end;

procedure THubungan.dbgrduserCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  cbb1.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  cbb2.Text:=ZQuery1.FieldList[5].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= true;
  cbb1.Enabled:= true;
  edt4.Enabled:=True;
  cbb2.Enabled:=True;


  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
end;

procedure THubungan.FormCreate(Sender: TObject);
begin
 edt1.Text:= ''; edt2.Text:= ''; cbb1.Text:= '';
 edt4.Text:= ''; cbb2.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;
 cbb1.Enabled:= False;
 edt4.Enabled:=False;
 cbb2.Enabled:=False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure THubungan.btn6Click(Sender: TObject);
begin
 frxRhubungan.ShowReport();
end;

end.
