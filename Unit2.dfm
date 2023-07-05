object Kelas: TKelas
  Left = 409
  Top = 164
  Width = 656
  Height = 480
  Caption = 'Data Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 264
    Top = 8
    Width = 98
    Height = 25
    Caption = 'Data Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 64
    Width = 58
    Height = 14
    Caption = ' ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 96
    Width = 61
    Height = 14
    Caption = 'Nama Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 48
    Top = 128
    Width = 41
    Height = 14
    Caption = 'Jurusan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtidKelas: TEdit
    Left = 152
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object edtnmKelas: TEdit
    Left = 152
    Top = 96
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object edtJurusan: TEdit
    Left = 152
    Top = 128
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 56
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
  end
  object btn2: TButton
    Left = 168
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
  end
  object btn3: TButton
    Left = 272
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 5
  end
  object btn4: TButton
    Left = 376
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btn4'
    TabOrder = 6
  end
  object btn5: TButton
    Left = 480
    Top = 176
    Width = 75
    Height = 25
    Caption = 'btn5'
    TabOrder = 7
  end
  object dbgrdkelas: TDBGrid
    Left = 48
    Top = 216
    Width = 521
    Height = 185
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 576
    Top = 32
  end
  object dsKelas: TDataSource
    Left = 576
    Top = 88
  end
end
