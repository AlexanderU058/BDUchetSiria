unit Rep3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfmRep3 = class(TForm)
    Panel2: TPanel;
    buSform: TButton;
    buExit: TButton;
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buSformClick(Sender: TObject);
    procedure buExitClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRep3: TfmRep3;

implementation

{$R *.dfm}

uses DM;



procedure TfmRep3.buExitClick(Sender: TObject);
begin
fmRep3.Close;
end;

procedure TfmRep3.buSformClick(Sender: TObject);
begin
with fmDM do
 begin
    if dstRep3.Active then dstRep3.Close;
    dstRep3.SelectSQL.Clear;
    dstRep3.SelectSQL.Add('SELECT NOMERNAKL, DATA, NAIMENSIRIA, KOLICHESTVO, SUMMA');
    dstRep3.SelectSQL.Add('FROM NAKLADNAYA');
    dstRep3.SelectSQL.Add('WHERE DATA BETWEEN'+chr(39)+DateTimeToStr(DateTimePicker1.DateTime)+chr(39)+' AND '+chr(39)+DateTimeToStr(DateTimePicker2.DateTime)+chr(39)+';');
    dstRep3.Open;
    DateTimePicker1.Time:=StrToTime('0:00:00');
    DateTimePicker2.Time:=StrToTime('0:00:00');
    frxReport3.Variables.Variables['DATA1']:=DateTimePicker1.DateTime;
    frxReport3.Variables.Variables['DATA2']:=DateTimePicker2.DateTime;
    frxReport3.ShowReport();
  end
end;

procedure TfmRep3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fmDM.dstNakladnaya.Active:=False;
   Action := caFree;
   fmRep3 := nil;
end;

end.


//if dstRep3.Active then dstRep3.Close;
    //dstRep3.SelectSQL.Clear;
  //  dstRep3.SelectSQL.Add('SELECT NOMERNAKL, DATA, NAIMENSIRIA, KOLICHESTVO, SUMMA');
 //   dstRep3.SelectSQL.Add('FROM NAKLADNAYA');
    //dstRep3.SelectSQL.Add('WHERE DATA BETWEEN'+chr(39)+DateToStr(DateTimePicker1.Date)+chr(39)+' AND '+chr(39)+DateToStr(DateTimePicker2.Date)+chr(39)+';');
 //   dstRep3.Open;
 //   frxReport3.Variables.Variables['DATA1']:=DateTimePicker1.DateTime;
 //   frxReport3.Variables.Variables['DATA2']:=DateTimePicker2.DateTime;
  //  frxReport3.ShowReport();
