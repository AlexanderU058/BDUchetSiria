unit Add_SIRIE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfmAddSirie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edNaimen: TEdit;
    buOk: TButton;
    Label2: TLabel;
    Label3: TLabel;
    edSort: TEdit;
    Label4: TLabel;
    edCena: TEdit;
    edNomNakl: TEdit;
    Label5: TLabel;
    buCancel: TButton;
    cbEdIzmer: TDBLookupComboBox;
    procedure buOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edNaimenKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddSirie: TfmAddSirie;

implementation

{$R *.dfm}

uses DM;



procedure TfmAddSirie.buOkClick(Sender: TObject);
begin
   with fmDM do
  begin
    //Включаем набор данных в режим добавления записи
    dstSirie.Insert;
    //Заносим введенные значения в набор данных dstSirie
    dstSirie.FBN('NAIMENOVANIE').AsString := edNaimen.Text;
    dstSirie.FBN('SORT').AsString := edSort.Text;
    dstSirie.FBN('EDIZMER').AsString := cbEdIzmer.Text;
    dstSirie.FBN('CENA').AsInteger := StrToInt(edCena.Text);
    dstSirie.FBN('NOMERNAKL').AsInteger := StrToInt(edNomNakl.Text);
  end;
end;

procedure TfmAddSirie.edNaimenKeyPress(Sender: TObject; var Key: Char);
begin
if not (((Key >= #192) AND (Key <= #255)) OR (Key in ['.', ' ', #8])) then Key :=#0;
end;

procedure TfmAddSirie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmAddSirie  := nil;
  fmDM.dstEdIzmer.Active:=False;
end;


procedure TfmAddSirie.FormShow(Sender: TObject);
begin
  fmDM.dstEdIzmer.Active:=True;
end;

end.
