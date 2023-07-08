object Ortu: TOrtu
  Left = 559
  Top = 92
  Width = 643
  Height = 590
  Caption = 'Data Orang Tua'
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
    Width = 135
    Height = 23
    Caption = 'Data Orang Tua'
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
    Width = 92
    Height = 14
    Caption = 'Nama Orang Tua'
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
  object lbl6: TLabel
    Left = 56
    Top = 112
    Width = 53
    Height = 14
    Caption = 'Pekerjaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 56
    Top = 184
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
    Top = 160
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
  object lbl10: TLabel
    Left = 56
    Top = 232
    Width = 41
    Height = 14
    Caption = 'ID Aktif'
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
    Width = 37
    Height = 14
    Caption = 'Agama'
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
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object edt6: TEdit
    Left = 152
    Top = 160
    Width = 393
    Height = 21
    TabOrder = 10
  end
  object edt8: TEdit
    Left = 152
    Top = 208
    Width = 393
    Height = 21
    TabOrder = 11
  end
  object edt9: TEdit
    Left = 152
    Top = 232
    Width = 393
    Height = 21
    TabOrder = 12
  end
  object cbb1: TComboBox
    Left = 152
    Top = 184
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'Perempuan'
      'Laki-laki')
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 304
    Width = 561
    Height = 209
    DataSource = dsOrtu
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ortu'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pendidikan'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pekerjaan'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_active'
        Visible = True
      end>
  end
  object dsOrtu: TDataSource
    DataSet = ZQuery1
    Left = 576
    Top = 104
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 576
    Top = 48
  end
end
