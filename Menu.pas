unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ZAbstractConnection, ZConnection;

type
  TMenuAwal = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    menu: TMainMenu;
    menu1: TMenuItem;
    DataSiswa1: TMenuItem;
    DataOrtu1: TMenuItem;
    DataKelas1: TMenuItem;
    DataWaliKelas1: TMenuItem;
    DataSemester1: TMenuItem;
    DataHubungan1: TMenuItem;
    ZConnection1: TZConnection;
    DataPoint1: TMenuItem;
    DataUser1: TMenuItem;
    procedure DataKelas1Click(Sender: TObject);
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure DataOrtu1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataHubungan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuAwal: TMenuAwal;

implementation

uses Unit2, Unit4, Unit1, Unit3, Unit8, Unit7;

{$R *.dfm}

procedure TMenuAwal.DataKelas1Click(Sender: TObject);
begin
 kelas.show;
end;

procedure TMenuAwal.DataSiswa1Click(Sender: TObject);
begin
  siswa.show
end;

procedure TMenuAwal.DataWaliKelas1Click(Sender: TObject);
begin
 walikelas.show
end;

procedure TMenuAwal.DataOrtu1Click(Sender: TObject);
begin
 ortu.show
end;

procedure TMenuAwal.DataUser1Click(Sender: TObject);
begin
 user.show
end;

procedure TMenuAwal.DataHubungan1Click(Sender: TObject);
begin
 hubungan.show
end;

end.
