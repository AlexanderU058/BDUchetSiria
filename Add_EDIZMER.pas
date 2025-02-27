unit Add_EDIZMER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmAddEdIzmer = class(TForm)
    Panel2: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    edNazv: TEdit;
    Label2: TLabel;
    edKod: TEdit;
    procedure buOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNazvKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddEdIzmer: TfmAddEdIzmer;

implementation

{$R *.dfm}

uses DM;

procedure TfmAddEdIzmer.buOkClick(Sender: TObject);
begin
 with fmDM do
  begin
    //�������� ����� ������ � ����� ���������� ������
    dstEdIzmer.Insert;
    //������� ��������� �������� � ����� ������ dstEdIzmer
    dstEdIzmer.FBN('NAZVANIE').AsString := edNazv.Text;
    dstEdIzmer.FBN('KODNAZV').AsInteger := StrToInt(edKod.Text);
  end;
end;

procedure TfmAddEdIzmer.edNazvKeyPress(Sender: TObject; var Key: Char);
begin
if not (((Key >= #192) AND (Key <= #255)) OR (Key in ['.', ' ', #8])) then key :=#0;
end;

procedure TfmAddEdIzmer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmAddEdIzmer  := nil;
end;

end.
