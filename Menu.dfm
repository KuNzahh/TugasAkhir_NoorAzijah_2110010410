object MenuAwal: TMenuAwal
  Left = 322
  Top = 149
  Width = 928
  Height = 480
  Caption = 'Menu'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 296
    Top = 160
    Width = 297
    Height = 36
    Caption = 'SISTEM INFROMASI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 272
    Top = 200
    Width = 339
    Height = 36
    Caption = ' SMP PELITA HARAPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object menu: TMainMenu
    Left = 48
    Top = 24
    object menu1: TMenuItem
      Caption = 'Menu'
      object DataSiswa1: TMenuItem
        Caption = 'Data Siswa'
        OnClick = DataSiswa1Click
      end
      object DataOrtu1: TMenuItem
        Caption = 'Data Ortu'
        OnClick = DataOrtu1Click
      end
      object DataKelas1: TMenuItem
        Caption = 'Data Kelas'
        OnClick = DataKelas1Click
      end
      object DataWaliKelas1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = DataWaliKelas1Click
      end
      object DataSemester1: TMenuItem
        Caption = 'Data Semester'
        OnClick = DataSemester1Click
      end
      object DataHubungan1: TMenuItem
        Caption = 'Data Hubungan'
        OnClick = DataHubungan1Click
      end
      object DataPoint1: TMenuItem
        Caption = 'Data Point'
        OnClick = DataPoint1Click
      end
      object DataUser1: TMenuItem
        Caption = 'Data User'
        OnClick = DataUser1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'smppelitaharapan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\FOLDER KULIAH\KULIAH SEMESTER 4\pemrograman visual 2\ProjectA' +
      'khir\libmysql.dll'
    Left = 48
    Top = 96
  end
end
