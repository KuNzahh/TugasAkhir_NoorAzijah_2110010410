object Login: TLogin
  Left = 566
  Top = 171
  Width = 672
  Height = 397
  Caption = 'Login'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 88
    Width = 84
    Height = 23
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 104
    Top = 152
    Width = 78
    Height = 23
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 272
    Top = 16
    Width = 107
    Height = 23
    Caption = 'LOGIN USER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 224
    Top = 88
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 224
    Top = 152
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 280
    Top = 224
    Width = 121
    Height = 57
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 568
    Top = 32
  end
  object dsuser: TDataSource
    DataSet = ZQuery1
    Left = 576
    Top = 104
  end
end
