object Siswa: TSiswa
  Left = 639
  Top = 89
  Width = 675
  Height = 607
  Caption = 'Data Siswa'
  Color = clActiveCaption
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
    Left = 248
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 344
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 440
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 152
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
  object edt9: TEdit
    Left = 152
    Top = 208
    Width = 169
    Height = 21
    TabOrder = 10
  end
  object edt10: TEdit
    Left = 384
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object dbgrdsiswa: TDBGrid
    Left = 52
    Top = 304
    Width = 557
    Height = 200
    DataSource = dsSiswa
    TabOrder = 12
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
    TabOrder = 13
  end
  object cbb1: TComboBox
    Left = 152
    Top = 160
    Width = 393
    Height = 21
    ItemHeight = 13
    TabOrder = 14
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
    TabOrder = 15
    Items.Strings = (
      'Aktif'
      'Alumni'
      'Dikeluarkan')
  end
  object edt6: TEdit
    Left = 416
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 16
  end
  object btn6: TButton
    Left = 528
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 17
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '<<<'
    TabOrder = 18
    OnClick = btn7Click
  end
  object ZQuery1: TZQuery
    Connection = MenuAwal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 560
    Top = 8
  end
  object dsSiswa: TDataSource
    DataSet = ZQuery1
    Left = 600
    Top = 64
  end
  object frxDBsiswa: TfrxDBDataset
    UserName = 'frxDBsiswa'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 592
    Top = 128
  end
  object frxRsiswa: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.478612280100000000
    ReportOptions.LastChange = 45116.478612280100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 192
    Datasets = <
      item
        DataSet = frxDBsiswa
        DataSetName = 'frxDBsiswa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 298.582870000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPAT LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 676.535870000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO HP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 729.449290000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 162.519790000000000000
        Width = 793.701300000000000000
        DataSet = frxDBsiswa
        DataSetName = 'frxDBsiswa'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          DataField = 'nis'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."nis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 49.133890000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          DataField = 'nisn'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."nisn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 105.826840000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          DataField = 'nama_siswa'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."nama_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 226.771800000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          DataField = 'nik'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 298.582870000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'tmpt_lahir'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."tmpt_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'tgl_lahir'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."tgl_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 457.323130000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."jenis_kelamin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 536.693260000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          DataField = 'alamat'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 623.622450000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DataField = 'telp'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 676.535870000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DataField = 'hp'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 729.449290000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DataField = 'status'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBsiswa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBsiswa."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
