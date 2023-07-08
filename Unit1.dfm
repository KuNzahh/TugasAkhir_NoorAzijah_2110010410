object WaliKelas: TWaliKelas
  Left = 205
  Top = 120
  Width = 662
  Height = 536
  Caption = 'Data Wali Kelas'
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
    Width = 129
    Height = 23
    Caption = 'Data Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 40
    Width = 19
    Height = 14
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 56
    Top = 64
    Width = 87
    Height = 14
    Caption = 'Nama Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 56
    Top = 88
    Width = 71
    Height = 14
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 56
    Top = 112
    Width = 58
    Height = 14
    Caption = 'Pendidikan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 56
    Top = 160
    Width = 78
    Height = 14
    Caption = 'Mata Pelajaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 56
    Top = 184
    Width = 37
    Height = 14
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 56
    Top = 136
    Width = 47
    Height = 14
    Caption = 'No. Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 56
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
  object edt1: TEdit
    Left = 152
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 56
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 272
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 160
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = btn2Click
  end
  object edt4: TEdit
    Left = 152
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 7
  end
  object edt5: TEdit
    Left = 152
    Top = 136
    Width = 393
    Height = 21
    TabOrder = 8
  end
  object edt6: TEdit
    Left = 152
    Top = 160
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object edt7: TEdit
    Left = 152
    Top = 184
    Width = 393
    Height = 21
    TabOrder = 10
  end
  object dbgrdWaliKelas: TDBGrid
    Left = 56
    Top = 280
    Width = 513
    Height = 169
    DataSource = dsWaliKelas
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdWaliKelasCellClick
  end
  object cbb1: TComboBox
    Left = 152
    Top = 88
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 12
  end
  object cbb2: TComboBox
    Left = 152
    Top = 208
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 13
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 576
    Top = 64
  end
  object dsWaliKelas: TDataSource
    DataSet = ZQuery1
    Left = 576
    Top = 120
  end
end
