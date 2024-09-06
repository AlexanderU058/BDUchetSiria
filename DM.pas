unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FIBDataSet, FIBDatabase,
  pFIBDatabase, pFIBDataSet, frxClass, frxDBSet;

type
  TfmDM = class(TDataModule)
    dbSklad: TpFIBDatabase;
    dstSirie: TpFIBDataSet;
    dstPostavshik: TpFIBDataSet;
    dstNakladnaya: TpFIBDataSet;
    dstEdIzmer: TpFIBDataSet;
    WriteTransaction: TpFIBTransaction;
    ReadTransaction: TpFIBTransaction;
    dsSirie: TDataSource;
    dsPostavshik: TDataSource;
    dsNakladnaya: TDataSource;
    dsEdIzmer: TDataSource;
    dstSirieNOMERSIRIA: TFIBIntegerField;
    dstSirieNAIMENOVANIE: TFIBStringField;
    dstSirieSORT: TFIBStringField;
    dstSirieEDIZMER: TFIBStringField;
    dstSirieCENA: TFIBFloatField;
    dstSirieNOMERNAKL: TFIBIntegerField;
    dstPostavshikNOMERPOSTAVSHIKA: TFIBIntegerField;
    dstPostavshikNAZVANIE: TFIBStringField;
    dstPostavshikADRES: TFIBStringField;
    dstPostavshikNOMERNAKL: TFIBIntegerField;
    dstNakladnayaNOMERNAKL: TFIBIntegerField;
    dstNakladnayaDATA: TFIBDateTimeField;
    dstNakladnayaNAIMENSIRIA: TFIBStringField;
    dstNakladnayaKOLICHESTVO: TFIBIntegerField;
    dstNakladnayaSUMMA: TFIBFloatField;
    dstEdIzmerNOMEREDIZM: TFIBIntegerField;
    dstEdIzmerNAZVANIE: TFIBStringField;
    dstEdIzmerKODNAZV: TFIBIntegerField;
    dsSel1: TDataSource;
    dstQuery1: TpFIBDataSet;
    dstQuery2: TpFIBDataSet;
    dstQuery3: TpFIBDataSet;
    dsSel2: TDataSource;
    dsSel3: TDataSource;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    dstQuery2NAZVANIE: TFIBStringField;
    dstQuery3NOMERNAKL: TFIBIntegerField;
    dstQuery3DATA: TFIBDateTimeField;
    dstQuery1NAZVANIE: TFIBStringField;
    dstRep1: TpFIBDataSet;
    dsRep1: TDataSource;
    dstRep1NOMERPOSTAVSHIKA: TFIBIntegerField;
    dstRep1NAZVANIE: TFIBStringField;
    dstRep1ADRES: TFIBStringField;
    dstRep1NOMERNAKL: TFIBIntegerField;
    dstRep1NAIMENOVANIE: TFIBStringField;
    dstRep2: TpFIBDataSet;
    dsRep2: TDataSource;
    dstRep2NOMERSIRIA: TFIBIntegerField;
    dstRep2NAIMENOVANIE: TFIBStringField;
    dstRep2SORT: TFIBStringField;
    dstRep2EDIZMER: TFIBStringField;
    dstRep2CENA: TFIBFloatField;
    dstRep2NOMERNAKL: TFIBIntegerField;
    dstRep2NAZVANIE: TFIBStringField;
    dstRep3: TpFIBDataSet;
    dsRep3: TDataSource;
    dstRep3NOMERNAKL: TFIBIntegerField;
    dstRep3DATA: TFIBDateTimeField;
    dstRep3NAIMENSIRIA: TFIBStringField;
    dstRep3KOLICHESTVO: TFIBIntegerField;
    dstRep3SUMMA: TFIBFloatField;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDM: TfmDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}









end.
