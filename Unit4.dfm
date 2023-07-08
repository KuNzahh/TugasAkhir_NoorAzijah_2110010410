object Siswa: TSiswa
  Left = 416
  Top = 85
  Width = 675
  Height = 607
  Caption = 'Data Siswa'
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
    Left = 264
    Top = 8
    Width = 92
    Height = 23
    Caption = 'Data Siswa'
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
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 56
    Top = 64
    Width = 27
    Height = 14
    Caption = 'NISN'
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
    Width = 64
    Height = 14
    Caption = 'Nama Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 56
    Top = 112
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
  object lbl6: TLabel
    Left = 56
    Top = 136
    Width = 72
    Height = 14
    Caption = 'Tempat Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 336
    Top = 136
    Width = 72
    Height = 14
    Caption = 'Tanggal Lahir'
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
    Top = 208
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
  object lbl10: TLabel
    Left = 336
    Top = 208
    Width = 38
    Height = 14
    Caption = 'No. Hp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 56
    Top = 232
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
  object edt3: TEdit
    Left = 152
    Top = 88
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 56
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 272
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 160
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object edt4: TEdit
    Left = 152
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 152
    Top = 136
    Width = 169
    Height = 21
    TabOrder = 9
  end
  object edt6: TEdit
    Left = 416
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 10
  end
  object edt9: TEdit
    Left = 152
    Top = 208
    Width = 169
    Height = 21
    TabOrder = 11
  end
  object edt10: TEdit
    Left = 384
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 12
  end
  object dbgrdsiswa: TDBGrid
    Left = 52
    Top = 304
    Width = 557
    Height = 200
    DataSource = dsSiswa
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdsiswaCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nisn'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tmpt_lahir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object edt8: TEdit
    Left = 152
    Top = 184
    Width = 393
    Height = 21
    TabOrder = 14
  end
  object cbb1: TComboBox
    Left = 152
    Top = 160
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Perempuan'
      'Laki-laki')
  end
  object cbb2: TComboBox
    Left = 152
    Top = 232
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'Aktif'
      'Alumni'
      'Dikeluarkan')
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 592
    Top = 48
  end
  object dsSiswa: TDataSource
    DataSet = ZQuery1
    Left = 600
    Top = 120
  end
end
