unit Add_NAKL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmAddNakladnaya = class(TForm)
    Panel2: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNaimenSiria: TEdit;
    edKolvo: TEdit;
    edSumma: TEdit;
    dtData: TDateTimePicker;
    procedure buOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNaimenSiriaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddNakladnaya: TfmAddNakladnaya;

implementation

{$R *.dfm}

uses DM;

procedure TfmAddNakladnaya.buOkClick(Sender: TObject);
begin
with fmDM do
  begin
    //�������� ����� ������ � ����� ���������� ������
    dstNakladnaya.Insert;
    //������� ��������� �������� � ����� ������ dstNakladnaya
    dstNakladnaya.FBN('DATA').AsDateTime := dtData.DateTime;
    dstNakladnaya.FBN('NAIMENSIRIA').AsString := edNaimenSiria.Text;
    dstNakladnaya.FBN('KOLICHESTVO').AsInteger := StrToInt(edKolvo.Text);
    dstNakladnaya.FBN('SUMMA').AsInteger := StrToInt(edSumma.Text);
  end;
end;

procedure TfmAddNakladnaya.edNaimenSiriaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (((Key >= #192) AND (Key <= #255)) OR (Key in ['.', ' ', #8])) then Key :=#0;
end;

procedure TfmAddNakladnaya.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmAddNakladnaya  := nil;
end;

end.
