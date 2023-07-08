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
  object lbl3: TLabel
    Left = 56
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
    Left = 56
    Top = 64
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
    Top = 88
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
    Top = 112
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
    Top = 136
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
  object btn1: TButton
    Left = 64
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 280
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 488
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 168
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object dbgrduser: TDBGrid
    Left = 56
    Top = 224
    Width = 529
    Height = 201
    DataSource = dshubungan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrduserCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'siswa_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ortu_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_hub_anak'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_ortu'
        Visible = True
      end>
  end
  object edt4: TEdit
    Left = 200
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 200
    Top = 88
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Ibu'
      'Ayah')
  end
  object cbb2: TComboBox
    Left = 200
    Top = 136
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Hidup'
      'Meninggal dunia')
  end
  object edt1: TEdit
    Left = 200
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object edt2: TEdit
    Left = 200
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 10
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
