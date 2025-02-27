unit Edit_POST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmEditPostavshik = class(TForm)
    Panel2: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNazv: TEdit;
    edAdres: TEdit;
    edNomNakl: TEdit;
    procedure buOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEditPostavshik: TfmEditPostavshik;

implementation

{$R *.dfm}

uses DM;

procedure TfmEditPostavshik.buOkClick(Sender: TObject);
begin
with fmDM do
  begin
    //�������� ����� ������ � ����� ���������� ������
    dstPostavshik.Edit;
    //������� ��������� �������� � ����� ������ dstPostavshik
    dstPostavshik.FBN('NAZVANIE').AsString := edNazv.Text;
    dstPostavshik.FBN('ADRES').AsString := edAdres.Text;
    dstPostavshik.FBN('NOMERNAKL').AsInteger := StrToInt(edNomNakl.Text);
  end;
end;

procedure TfmEditPostavshik.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmEditPostavshik := nil;
end;

procedure TfmEditPostavshik.FormShow(Sender: TObject);
begin
with fmDM do
  begin
    edNazv.Text := dstPostavshik.FBN('NAZVANIE').AsString;
    edAdres.Text := dstPostavshik.FBN('ADRES').AsString;
    edNomNakl.Text := dstPostavshik.FBN('NOMERNAKL').AsString;
  end;
end;

end.
