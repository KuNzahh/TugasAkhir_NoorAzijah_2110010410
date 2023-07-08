object Semester: TSemester
  Left = 555
  Top = 152
  Width = 635
  Height = 577
  Caption = 'Data Semester'
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
    Left = 240
    Top = 8
    Width = 123
    Height = 23
    Caption = 'Data Semester'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 40
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
    Left = 40
    Top = 64
    Width = 44
    Height = 14
    Caption = 'ID Point'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 88
    Width = 38
    Height = 14
    Caption = 'ID Wali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 112
    Width = 74
    Height = 14
    Caption = 'ID Orang Tua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 184
    Width = 52
    Height = 14
    Caption = 'Semester'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 208
    Width = 35
    Height = 14
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 40
    Top = 136
    Width = 43
    Height = 14
    Caption = 'ID Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 40
    Top = 232
    Width = 72
    Height = 14
    Caption = 'Tingkat Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 160
    Width = 43
    Height = 14
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 136
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 136
    Top = 88
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 32
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 248
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 456
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 136
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object edt4: TEdit
    Left = 136
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 136
    Top = 136
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object edt6: TEdit
    Left = 136
    Top = 160
    Width = 393
    Height = 21
    TabOrder = 10
  end
  object edt7: TEdit
    Left = 136
    Top = 184
    Width = 393
    Height = 21
    TabOrder = 11
  end
  object edt9: TEdit
    Left = 136
    Top = 232
    Width = 393
    Height = 21
    TabOrder = 12
  end
  object dbgrdkelas: TDBGrid
    Left = 32
    Top = 336
    Width = 521
    Height = 185
    DataSource = dssemster
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdkelasCellClick
  end
  object cbb1: TComboBox
    Left = 136
    Top = 208
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object dssemster: TDataSource
    DataSet = ZQuery1
    Left = 560
    Top = 88
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from semester')
    Params = <>
    Left = 560
    Top = 40
  end
end
