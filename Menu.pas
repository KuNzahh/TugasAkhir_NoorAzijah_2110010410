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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuAwal: TMenuAwal;

implementation

{$R *.dfm}

end.
