object fmDM: TfmDM
  OldCreateOrder = False
  Height = 448
  Width = 729
  object dbSklad: TpFIBDatabase
    Connected = True
    DBName = 'localhost:D:\Data\SKLAD.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    DefaultTransaction = ReadTransaction
    DefaultUpdateTransaction = WriteTransaction
    SQLDialect = 1
    Timeout = 0
    LibraryName = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 32
    Top = 32
  end
  object dstSirie: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SIRIE'
      'SET '
      '    NOMERSIRIA = :NOMERSIRIA,'
      '    NAIMENOVANIE = :NAIMENOVANIE,'
      '    SORT = :SORT,'
      '    EDIZMER = :EDIZMER,'
      '    CENA = :CENA,'
      '    NOMERNAKL = :NOMERNAKL'
      'WHERE'
      '    NOMERSIRIA = :OLD_NOMERSIRIA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SIRIE'
      'WHERE'
      '        NOMERSIRIA = :OLD_NOMERSIRIA'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SIRIE('
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      ')'
      'VALUES('
      '    :NOMERSIRIA,'
      '    :NAIMENOVANIE,'
      '    :SORT,'
      '    :EDIZMER,'
      '    :CENA,'
      '    :NOMERNAKL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      'FROM'
      '    SIRIE '
      ''
      ' WHERE '
      '        SIRIE.NOMERSIRIA = :OLD_NOMERSIRIA'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      'FROM'
      '    SIRIE ')
    AutoUpdateOptions.UpdateTableName = 'SIRIE'
    AutoUpdateOptions.KeyFields = 'NOMERSIRIA'
    AutoUpdateOptions.GeneratorName = 'GEN_SIRIE_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    AutoCommit = True
    Left = 32
    Top = 104
    object dstSirieNOMERSIRIA: TFIBIntegerField
      FieldName = 'NOMERSIRIA'
    end
    object dstSirieNAIMENOVANIE: TFIBStringField
      FieldName = 'NAIMENOVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstSirieSORT: TFIBStringField
      FieldName = 'SORT'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstSirieEDIZMER: TFIBStringField
      FieldName = 'EDIZMER'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstSirieCENA: TFIBFloatField
      FieldName = 'CENA'
    end
    object dstSirieNOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
  end
  object dstPostavshik: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE POSTAVSHIK'
      'SET '
      '    NOMERPOSTAVSHIKA = :NOMERPOSTAVSHIKA,'
      '    NAZVANIE = :NAZVANIE,'
      '    ADRES = :ADRES,'
      '    NOMERNAKL = :NOMERNAKL'
      'WHERE'
      '    NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    POSTAVSHIK'
      'WHERE'
      '        NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO POSTAVSHIK('
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      ')'
      'VALUES('
      '    :NOMERPOSTAVSHIKA,'
      '    :NAZVANIE,'
      '    :ADRES,'
      '    :NOMERNAKL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK '
      ''
      ' WHERE '
      '        POSTAVSHIK.NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK '
      'WHERE NOMERNAKL = :NOMERNAKL')
    AutoUpdateOptions.UpdateTableName = 'POSTAVSHIK'
    AutoUpdateOptions.KeyFields = 'NOMERPOSTAVSHIKA'
    AutoUpdateOptions.GeneratorName = 'GEN_POSTAVSHIK_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    AutoCommit = True
    DataSource = dsNakladnaya
    Left = 32
    Top = 176
    object dstPostavshikNOMERPOSTAVSHIKA: TFIBIntegerField
      FieldName = 'NOMERPOSTAVSHIKA'
    end
    object dstPostavshikNAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstPostavshikADRES: TFIBStringField
      FieldName = 'ADRES'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstPostavshikNOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
  end
  object dstNakladnaya: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE NAKLADNAYA'
      'SET '
      '    NOMERNAKL = :NOMERNAKL,'
      '    DATA = :DATA,'
      '    NAIMENSIRIA = :NAIMENSIRIA,'
      '    KOLICHESTVO = :KOLICHESTVO,'
      '    SUMMA = :SUMMA'
      'WHERE'
      '    NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    NAKLADNAYA'
      'WHERE'
      '        NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO NAKLADNAYA('
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      ')'
      'VALUES('
      '    :NOMERNAKL,'
      '    :DATA,'
      '    :NAIMENSIRIA,'
      '    :KOLICHESTVO,'
      '    :SUMMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA '
      ''
      ' WHERE '
      '        NAKLADNAYA.NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA ')
    AutoUpdateOptions.UpdateTableName = 'NAKLADNAYA'
    AutoUpdateOptions.KeyFields = 'NOMERNAKL'
    AutoUpdateOptions.GeneratorName = 'GEN_NAKLADNAYA_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    AutoCommit = True
    Left = 32
    Top = 256
    dcForceOpen = True
    object dstNakladnayaNOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
    object dstNakladnayaDATA: TFIBDateTimeField
      FieldName = 'DATA'
    end
    object dstNakladnayaNAIMENSIRIA: TFIBStringField
      FieldName = 'NAIMENSIRIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstNakladnayaKOLICHESTVO: TFIBIntegerField
      FieldName = 'KOLICHESTVO'
    end
    object dstNakladnayaSUMMA: TFIBFloatField
      FieldName = 'SUMMA'
    end
  end
  object dstEdIzmer: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE EDIZMER'
      'SET '
      '    NOMEREDIZM = :NOMEREDIZM,'
      '    NAZVANIE = :NAZVANIE,'
      '    KODNAZV = :KODNAZV'
      'WHERE'
      '    NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    EDIZMER'
      'WHERE'
      '        NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO EDIZMER('
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      ')'
      'VALUES('
      '    :NOMEREDIZM,'
      '    :NAZVANIE,'
      '    :KODNAZV'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      'FROM'
      '    EDIZMER '
      ''
      ' WHERE '
      '        EDIZMER.NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      'FROM'
      '    EDIZMER ')
    AutoUpdateOptions.UpdateTableName = 'EDIZMER'
    AutoUpdateOptions.KeyFields = 'NOMEREDIZM'
    AutoUpdateOptions.GeneratorName = 'GEN_EDIZMER_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    AutoCommit = True
    Left = 32
    Top = 320
    object dstEdIzmerNOMEREDIZM: TFIBIntegerField
      FieldName = 'NOMEREDIZM'
    end
    object dstEdIzmerNAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstEdIzmerKODNAZV: TFIBIntegerField
      FieldName = 'KODNAZV'
    end
  end
  object WriteTransaction: TpFIBTransaction
    DefaultDatabase = dbSklad
    Left = 216
    Top = 32
  end
  object ReadTransaction: TpFIBTransaction
    Active = True
    DefaultDatabase = dbSklad
    Left = 120
    Top = 32
  end
  object dsSirie: TDataSource
    DataSet = dstSirie
    Left = 120
    Top = 104
  end
  object dsPostavshik: TDataSource
    DataSet = dstPostavshik
    Left = 120
    Top = 176
  end
  object dsNakladnaya: TDataSource
    DataSet = dstNakladnaya
    Left = 120
    Top = 256
  end
  object dsEdIzmer: TDataSource
    DataSet = dstEdIzmer
    Left = 120
    Top = 320
  end
  object dsSel1: TDataSource
    DataSet = dstQuery1
    Left = 304
    Top = 104
  end
  object dstQuery1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE POSTAVSHIK'
      'SET '
      '    NOMERPOSTAVSHIKA = :NOMERPOSTAVSHIKA,'
      '    NAZVANIE = :NAZVANIE,'
      '    ADRES = :ADRES,'
      '    NOMERNAKL = :NOMERNAKL'
      'WHERE'
      '    NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    POSTAVSHIK'
      'WHERE'
      '        NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO POSTAVSHIK('
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      ')'
      'VALUES('
      '    :NOMERPOSTAVSHIKA,'
      '    :NAZVANIE,'
      '    :ADRES,'
      '    :NOMERNAKL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK '
      ''
      ''
      ' WHERE '
      '        POSTAVSHIK.NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK '
      '')
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 216
    Top = 104
    object dstQuery1NAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dstQuery2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE EDIZMER'
      'SET '
      '    NOMEREDIZM = :NOMEREDIZM,'
      '    NAZVANIE = :NAZVANIE,'
      '    KODNAZV = :KODNAZV'
      'WHERE'
      '    NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    EDIZMER'
      'WHERE'
      '        NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO EDIZMER('
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      ')'
      'VALUES('
      '    :NOMEREDIZM,'
      '    :NAZVANIE,'
      '    :KODNAZV'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      'FROM'
      '    EDIZMER '
      ''
      ' WHERE '
      '        EDIZMER.NOMEREDIZM = :OLD_NOMEREDIZM'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      'FROM'
      '    EDIZMER '
      'ORDER BY NAZVANIE')
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 216
    Top = 176
    object dstQuery2NAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dstQuery3: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE NAKLADNAYA'
      'SET '
      '    NOMERNAKL = :NOMERNAKL,'
      '    DATA = :DATA,'
      '    NAIMENSIRIA = :NAIMENSIRIA,'
      '    KOLICHESTVO = :KOLICHESTVO,'
      '    SUMMA = :SUMMA'
      'WHERE'
      '    NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    NAKLADNAYA'
      'WHERE'
      '        NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO NAKLADNAYA('
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      ')'
      'VALUES('
      '    :NOMERNAKL,'
      '    :DATA,'
      '    :NAIMENSIRIA,'
      '    :KOLICHESTVO,'
      '    :SUMMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA '
      ''
      ' WHERE '
      '        NAKLADNAYA.NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA ')
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 216
    Top = 256
    object dstQuery3NOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
    object dstQuery3DATA: TFIBDateTimeField
      FieldName = 'DATA'
    end
  end
  object dsSel2: TDataSource
    DataSet = dstQuery2
    Left = 304
    Top = 176
  end
  object dsSel3: TDataSource
    DataSet = dstQuery3
    Left = 304
    Top = 256
  end
  object frxReport1: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44903.536006990740000000
    ReportOptions.LastChange = 44906.676257071760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074' '#1089#1099#1088#1100#1103':')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 45.354360000000000000
          Width = 34.015770000000010000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 45.354360000000000000
          Width = 359.055350000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 294.803340000000000000
          Height = 30.236240000000000000
          DataField = 'NAIMENOVANIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NAIMENOVANIE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000020000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 18.897650000000020000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'NOMERPOSTAVSHIKA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMERPOSTAVSHIKA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'NAZVANIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NAZVANIE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'ADRES'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ADRES"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'NOMERNAKL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMERNAKL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 22.677179999999990000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 22.677179999999990000
          Width = 136.063080000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 22.677179999999990000
          Width = 154.960730000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081)
          ParentFont = False
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44907.503312928200000000
    ReportOptions.LastChange = 44907.503312928200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1089#1099#1088#1100#1103' '#1089' '#1077#1076#1080#1085#1080#1094#1086#1081' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          DataField = 'NAZVANIE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NAZVANIE"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090)
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          DataField = 'NOMERSIRIA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOMERSIRIA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 52.913420000000000000
          DataField = 'NAIMENOVANIE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NAIMENOVANIE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 11.338590000000000000
          Width = 117.165430000000000000
          Height = 52.913420000000000000
          DataField = 'SORT'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SORT"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 139.842610000000000000
          Height = 52.913420000000000000
          DataField = 'CENA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CENA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          DataField = 'NOMERNAKL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOMERNAKL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1089#1099#1088#1100#1103)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1086#1088#1090)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1062#1077#1085#1072)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081)
          ParentFont = False
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44906.813059178240000000
    ReportOptions.LastChange = 44906.813059178240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 256
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 158.740260000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1079#1072' '#1074#1088#1077#1084#1103':')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 52.913420000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1086#1090':')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 113.385900000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 52.913420000000000000
          Width = 238.110390000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA1]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 52.913420000000000000
          Width = 238.110390000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA2]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000010000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          DataField = 'NOMERNAKL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NOMERNAKL"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 11.338590000000000000
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          DataField = 'DATA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."DATA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 41.574830000000000000
          DataField = 'NAIMENSIRIA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."NAIMENSIRIA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          DataField = 'KOLICHESTVO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."KOLICHESTVO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 41.574830000000000000
          DataField = 'SUMMA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."SUMMA"]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsRep1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 104
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsRep2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 176
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSource = dsRep3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 256
  end
  object dstRep1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE POSTAVSHIK'
      'SET '
      '    NOMERPOSTAVSHIKA = :NOMERPOSTAVSHIKA,'
      '    NAZVANIE = :NAZVANIE,'
      '    ADRES = :ADRES'
      'WHERE'
      '    NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    POSTAVSHIK'
      'WHERE'
      '        NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO POSTAVSHIK('
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES'
      ')'
      'VALUES('
      '    :NOMERPOSTAVSHIKA,'
      '    :NAZVANIE,'
      '    :ADRES'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      ','
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK'
      '    JOIN SIRIE  ON (POSTAVSHIK.NOMERNAKL = SIRIE.NOMERNAKL)'
      '    '
      ''
      ' WHERE '
      '        POSTAVSHIK.NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      ','
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK'
      '    JOIN SIRIE  ON (POSTAVSHIK.NOMERNAKL = SIRIE.NOMERNAKL)'
      '    ')
    AutoUpdateOptions.UpdateTableName = 'POSTAVSHIK'
    AutoUpdateOptions.KeyFields = 'NOMERPOSTAVSHIKA'
    AutoUpdateOptions.GeneratorName = 'GEN_POSTAVSHIK_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 584
    Top = 104
    object dstRep1NOMERPOSTAVSHIKA: TFIBIntegerField
      FieldName = 'NOMERPOSTAVSHIKA'
    end
    object dstRep1NAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep1ADRES: TFIBStringField
      FieldName = 'ADRES'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep1NOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
    object dstRep1NAIMENOVANIE: TFIBStringField
      FieldName = 'NAIMENOVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsRep1: TDataSource
    DataSet = dstRep1
    Left = 656
    Top = 104
  end
  object dstRep2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE POSTAVSHIK'
      'SET '
      '    NOMERPOSTAVSHIKA = :NOMERPOSTAVSHIKA,'
      '    NAZVANIE = :NAZVANIE,'
      '    ADRES = :ADRES'
      'WHERE'
      '    NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    POSTAVSHIK'
      'WHERE'
      '        NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO POSTAVSHIK('
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES'
      ')'
      'VALUES('
      '    :NOMERPOSTAVSHIKA,'
      '    :NAZVANIE,'
      '    :ADRES'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERPOSTAVSHIKA,'
      '    NAZVANIE,'
      '    ADRES,'
      '    NOMERNAKL'
      ','
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      'FROM'
      '    POSTAVSHIK'
      '    JOIN SIRIE  ON (POSTAVSHIK.NOMERNAKL = SIRIE.NOMERNAKL)'
      '    '
      ''
      ' WHERE '
      '        POSTAVSHIK.NOMERPOSTAVSHIKA = :OLD_NOMERPOSTAVSHIKA'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERSIRIA,'
      '    NAIMENOVANIE,'
      '    SORT,'
      '    EDIZMER,'
      '    CENA,'
      '    NOMERNAKL'
      ','
      '    NOMEREDIZM,'
      '    NAZVANIE,'
      '    KODNAZV'
      'FROM'
      '    SIRIE'
      '    JOIN EDIZMER  ON (SIRIE.EDIZMER = EDIZMER.NAZVANIE)'
      '    ')
    AutoUpdateOptions.UpdateTableName = 'POSTAVSHIK'
    AutoUpdateOptions.KeyFields = 'NOMERPOSTAVSHIKA'
    AutoUpdateOptions.GeneratorName = 'GEN_POSTAVSHIK_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 584
    Top = 176
    object dstRep2NOMERSIRIA: TFIBIntegerField
      FieldName = 'NOMERSIRIA'
    end
    object dstRep2NAIMENOVANIE: TFIBStringField
      FieldName = 'NAIMENOVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep2SORT: TFIBStringField
      FieldName = 'SORT'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep2EDIZMER: TFIBStringField
      FieldName = 'EDIZMER'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep2CENA: TFIBFloatField
      FieldName = 'CENA'
    end
    object dstRep2NOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
    object dstRep2NAZVANIE: TFIBStringField
      FieldName = 'NAZVANIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsRep2: TDataSource
    DataSet = dstRep2
    Left = 656
    Top = 176
  end
  object dstRep3: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE NAKLADNAYA'
      'SET '
      '    NOMERNAKL = :NOMERNAKL,'
      '    DATA = :DATA,'
      '    NAIMENSIRIA = :NAIMENSIRIA,'
      '    KOLICHESTVO = :KOLICHESTVO,'
      '    SUMMA = :SUMMA'
      'WHERE'
      '    NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    NAKLADNAYA'
      'WHERE'
      '        NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO NAKLADNAYA('
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      ')'
      'VALUES('
      '    :NOMERNAKL,'
      '    :DATA,'
      '    :NAIMENSIRIA,'
      '    :KOLICHESTVO,'
      '    :SUMMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA'
      '    '
      ''
      ' WHERE '
      '        NAKLADNAYA.NOMERNAKL = :OLD_NOMERNAKL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMERNAKL,'
      '    DATA,'
      '    NAIMENSIRIA,'
      '    KOLICHESTVO,'
      '    SUMMA'
      'FROM'
      '    NAKLADNAYA'
      '    ')
    AutoUpdateOptions.UpdateTableName = 'POSTAVSHIK'
    AutoUpdateOptions.KeyFields = 'NOMERPOSTAVSHIKA'
    AutoUpdateOptions.GeneratorName = 'GEN_POSTAVSHIK_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = ReadTransaction
    Database = dbSklad
    UpdateTransaction = WriteTransaction
    Left = 584
    Top = 256
    object dstRep3NOMERNAKL: TFIBIntegerField
      FieldName = 'NOMERNAKL'
    end
    object dstRep3DATA: TFIBDateTimeField
      FieldName = 'DATA'
    end
    object dstRep3NAIMENSIRIA: TFIBStringField
      FieldName = 'NAIMENSIRIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstRep3KOLICHESTVO: TFIBIntegerField
      FieldName = 'KOLICHESTVO'
    end
    object dstRep3SUMMA: TFIBFloatField
      FieldName = 'SUMMA'
    end
  end
  object dsRep3: TDataSource
    DataSet = dstRep3
    Left = 656
    Top = 256
  end
end
