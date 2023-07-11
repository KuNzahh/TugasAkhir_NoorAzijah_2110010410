unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TKelas = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrdkelas: TDBGrid;
    ZQuery1: TZQuery;
    dsKelas: TDataSource;
    btn2: TButton;
    frxDBKelas: TfrxDBDataset;
    frxRkelas: TfrxReport;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrdkelasCellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure editclear;
    procedure editenabled;
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kelas: TKelas;
  id : String;

implementation

uses
  Menu;



{$R *.dfm}

procedure TKelas.btn1Click(Sender: TObject);
begin
 edt1.Clear;
 editenabled;

 edt1.Enabled:= True;
 edt2.Enabled:= True;

 btn1.Enabled:= False;
 btn2.Enabled:= True;
 btn3.Enabled:= True;
 btn4.Enabled:=True;
 btn5.Enabled:=True;

end;

procedure TKelas.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NAMA KELAS TIDAK BOLEH KOSONG!');
  end else
  if edt2.Text ='' then
  begin
  ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
  end else
begin
 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+edt2.Text+'")');
 ZQuery1.ExecSQL;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from kelas');
 ZQuery1.Open;
  if (edt1.Text= '')or (edt2.Text ='') then
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



procedure TKelas.dbgrdkelasCellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;

  btn1.Enabled:= false;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;

end;

procedure TKelas.btn3Click(Sender: TObject);
begin
  ShowMessage('DATA BERHASIL DIUPDATE!') ;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update kelas set nama= "'+edt1.Text+'", jurusan="'+edt2.Text+'" where kelas.id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  posisiawal;
end;

procedure TKelas.btn4Click(Sender: TObject);
begin
   if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('delete from kelas where id="'+edt1.Text+'"');
   ZQuery1.ExecSQL;

   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Add('select*from kelas');
   ZQuery1.Open;
   end else
  Begin
  ShowMessage('DATA BATAL DIHAPUS !');
  posisiawal;
  end
end;

procedure TKelas.btn5Click(Sender: TObject);
begin
  posisiawal;
end;



procedure TKelas.posisiawal;
begin
 bersih;
 btn1.Enabled:=True;
 btn2.Enabled:=False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
 edt1.Enabled:=False;
 edt2.Enabled:=False;
end;

procedure TKelas.bersih;
begin
 edt1.Clear;
 edt2.Clear;
end;

procedure TKelas.FormCreate(Sender: TObject);
begin
 edt1.Text:= '';
 edt2.Text:= '';

 edt1.Enabled:= False;
 edt2.Enabled:= False;

 btn1.Enabled:= True;
 btn2.Enabled:= False;
 btn3.Enabled:=False;
 btn4.Enabled:=False;
 btn5.Enabled:=False;
end;

procedure TKelas.editclear;
begin
 edt1.Text:= '';
 edt2.Text:= '';
end;

procedure TKelas.editenabled;
begin
 edt1.Enabled:= True;
 edt2.Enabled:= True;
end;

procedure TKelas.btn6Click(Sender: TObject);
begin
 frxRkelas.ShowReport();
end;

procedure TKelas.btn7Click(Sender: TObject);
begin
 kelas.Close;
end;

end.
