unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TSemester = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
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
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    dbgrdkelas: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Semester: TSemester;

implementation

{$R *.dfm}

end.
