unit Add_POST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmAddPostavshik = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edNazv: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edAdres: TEdit;
    edNomNakl: TEdit;
    buOk: TButton;
    buCancel: TButton;
    procedure buOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddPostavshik: TfmAddPostavshik;

implementation

{$R *.dfm}

uses DM;

procedure TfmAddPostavshik.buOkClick(Sender: TObject);
begin
with fmDM do
  begin
    //�������� ����� ������ � ����� ���������� ������
    dstPostavshik.Insert;
    //������� ��������� �������� � ����� ������ dstPostavshik
    dstPostavshik.FBN('NAZVANIE').AsString := edNazv.Text;
    dstPostavshik.FBN('ADRES').AsString := edAdres.Text;
    dstPostavshik.FBN('NOMERNAKL').AsInteger := StrToInt(edNomNakl.Text);
  end;
end;

procedure TfmAddPostavshik.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmAddPostavshik  := nil;
end;

end.
