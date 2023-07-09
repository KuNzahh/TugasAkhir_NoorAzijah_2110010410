object Hubungan: THubungan
  Left = 234
  Top = 149
  Width = 699
  Height = 480
  Caption = 'Data Hubungan'
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
    Left = 24
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
    OnClick = btn5Click
  end
  object btn2: TButton
    Left = 112
    Top = 176
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
  object btn6: TButton
    Left = 496
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 11
    OnClick = btn6Click
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
  object frxDBhubungan: TfrxDBDataset
    UserName = 'frxDBhubungan'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 616
    Top = 176
  end
  object frxRhubungan: TfrxReport
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
    Left = 624
    Top = 240
    Datasets = <
      item
        DataSet = frxDBhubungan
        DataSetName = 'frxDBhubungan'
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
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo11: TfrxMemoView
          Left = 215.433210000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Report Data Hubungan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 90.708720000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
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
            'ID ORTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
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
            'STATUS ORTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
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
            'ID SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 230.551330000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
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
            'STATUS HUB ANAK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 430.866420000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
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
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 188.976500000000000000
        Width = 793.701300000000000000
        DataSet = frxDBhubungan
        DataSetName = 'frxDBhubungan'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          DataField = 'ortu_id'
          DataSet = frxDBhubungan
          DataSetName = 'frxDBhubungan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhubungan."ortu_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          DataField = 'status_ortu'
          DataSet = frxDBhubungan
          DataSetName = 'frxDBhubungan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhubungan."status_ortu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          DataField = 'siswa_id'
          DataSet = frxDBhubungan
          DataSetName = 'frxDBhubungan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhubungan."siswa_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 230.551330000000000000
          Width = 200.315090000000000000
          Height = 34.015770000000000000
          DataField = 'status_hub_anak'
          DataSet = frxDBhubungan
          DataSetName = 'frxDBhubungan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhubungan."status_hub_anak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 430.866420000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          DataField = 'keterangan'
          DataSet = frxDBhubungan
          DataSetName = 'frxDBhubungan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhubungan."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
