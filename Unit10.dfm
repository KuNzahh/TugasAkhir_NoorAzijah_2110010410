object Daftar: TDaftar
  Left = 361
  Top = 220
  Width = 673
  Height = 308
  Caption = 'Daftar'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 80
    Top = 56
    Width = 54
    Height = 14
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 80
    Top = 80
    Width = 51
    Height = 14
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 104
    Width = 28
    Height = 14
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 128
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
  object lbl: TLabel
    Left = 272
    Top = 16
    Width = 137
    Height = 23
    Caption = 'DAFTAR USER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 152
    Top = 56
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 80
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 152
    Top = 104
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object cbb1: TComboBox
    Left = 152
    Top = 128
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object btn2: TButton
    Left = 272
    Top = 184
    Width = 97
    Height = 41
    Caption = 'Daftar'
    TabOrder = 4
    OnClick = btn2Click
  end
  object dsuser: TDataSource
    DataSet = ZQuery1
    Left = 584
    Top = 104
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select *from user')
    Params = <>
    Left = 584
    Top = 56
  end
end
