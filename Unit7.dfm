object Hubungan: THubungan
  Left = 480
  Top = 175
  Width = 699
  Height = 480
  Caption = 'Data Hubungan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 256
    Top = 8
    Width = 134
    Height = 23
    Caption = 'Data Hubungan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 40
    Width = 76
    Height = 14
    Caption = ' ID Hubungan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 64
    Width = 46
    Height = 14
    Caption = 'ID Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 56
    Top = 88
    Width = 41
    Height = 14
    Caption = 'ID Ortu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 112
    Width = 126
    Height = 14
    Caption = 'Status Hubungan Anak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 63
    Height = 14
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 160
    Width = 97
    Height = 14
    Caption = 'Status Orang Tua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 200
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 200
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 200
    Top = 88
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 64
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 280
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 488
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 168
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object edt4: TEdit
    Left = 200
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 200
    Top = 136
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object edt6: TEdit
    Left = 200
    Top = 160
    Width = 393
    Height = 21
    TabOrder = 10
  end
  object dbgrduser: TDBGrid
    Left = 56
    Top = 224
    Width = 529
    Height = 201
    DataSource = dshubungan
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrduserCellClick
  end
  object dshubungan: TDataSource
    DataSet = ZQuery1
    Left = 624
    Top = 104
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 624
    Top = 48
  end
end
