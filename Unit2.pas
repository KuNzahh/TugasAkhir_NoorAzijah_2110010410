unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls;

type
  TKelas = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtidKelas: TEdit;
    edtnmKelas: TEdit;
    edtJurusan: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrdkelas: TDBGrid;
    ZQuery1: TZQuery;
    dsKelas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kelas: TKelas;

implementation

{$R *.dfm}

end.
