unit Edit_NAKL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmEditNakladnaya = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNaimenSiriaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEditNakladnaya: TfmEditNakladnaya;

implementation

{$R *.dfm}

uses DM;

procedure TfmEditNakladnaya.buOkClick(Sender: TObject);
begin
with fmDM do
  begin
    //�������� ����� ������ � ����� ��������� ������
   dstNakladnaya.Edit;
    //������� ��������� �������� � ����� ������ dstNakladnaya
    dstNakladnaya.FBN('DATA').AsDateTime := dtData.DateTime;
    dstNakladnaya.FBN('NAIMENSIRIA').AsString := edNaimenSiria.Text;
    dstNakladnaya.FBN('KOLICHESTVO').AsInteger := StrToInt(edKolvo.Text);
    dstNakladnaya.FBN('SUMMA').AsInteger := StrToInt(edSumma.Text);
  end;
end;

procedure TfmEditNakladnaya.edNaimenSiriaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (((Key >= #192) AND (Key <= #255)) OR (Key in ['.', ' ', #8])) then Key :=#0;
end;

procedure TfmEditNakladnaya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmEditNakladnaya := nil;
end;

procedure TfmEditNakladnaya.FormShow(Sender: TObject);
begin
with fmDM do
  begin
    dtData.DateTime := dstNakladnaya.FBN('DATA').AsDateTime;
    edNaimenSiria.Text := dstNakladnaya.FBN('NAIMENSIRIA').AsString;
    edKolvo.Text := dstNakladnaya.FBN('KOLICHESTVO').AsString;
    edSumma.Text := dstNakladnaya.FBN('SUMMA').AsString;
  end;
end;

end.
