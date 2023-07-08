program ProjectAkhir;

uses
  Forms,
  Menu in 'Menu.pas' {MenuAwal},
  Unit2 in 'Unit2.pas' {Kelas},
  Unit3 in 'Unit3.pas' {Ortu},
  Unit4 in 'Unit4.pas' {Siswa},
  Unit1 in 'Unit1.pas' {WaliKelas},
  Unit5 in 'Unit5.pas' {Semester},
  Unit6 in 'Unit6.pas' {poin},
  Unit7 in 'Unit7.pas' {Hubungan},
  Unit8 in 'Unit8.pas' {User},
  Unit9 in 'Unit9.pas' {Login};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuAwal, MenuAwal);
  Application.CreateForm(TKelas, Kelas);
  Application.CreateForm(TOrtu, Ortu);
  Application.CreateForm(TSiswa, Siswa);
  Application.CreateForm(TWaliKelas, WaliKelas);
  Application.CreateForm(TSemester, Semester);
  Application.CreateForm(Tpoin, poin);
  Application.CreateForm(THubungan, Hubungan);
  Application.CreateForm(TUser, User);
  Application.CreateForm(TLogin, Login);
  Application.Run;
end.
