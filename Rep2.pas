unit Rep2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmRep2 = class(TForm)
    Panel2: TPanel;
    buSform: TButton;
    buExit: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    cbEdIzmer: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure buSformClick(Sender: TObject);
    procedure buExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRep2: TfmRep2;

implementation

{$R *.dfm}

uses DM;

procedure TfmRep2.buExitClick(Sender: TObject);
begin
fmRep2.Close;
end;

procedure TfmRep2.buSformClick(Sender: TObject);
begin
   with fmDM do
 begin
    if dstRep2.Active then dstRep2.Close;
    dstRep2.SelectSQL.Clear;
    dstRep2.SelectSQL.Add('SELECT NOMERSIRIA, NAIMENOVANIE, SORT, EDIZMER, CENA, NOMERNAKL, NAZVANIE');
    dstRep2.SelectSQL.Add('FROM SIRIE');
    dstRep2.SelectSQL.Add('JOIN EDIZMER  ON (SIRIE.EDIZMER = EDIZMER.NAZVANIE AND EDIZMER.NAZVANIE = '+chr(39)+cbEdIZmer.Text+chr(39)+');');
    dstRep2.Open;
    frxReport2.ShowReport();
  end
end;

procedure TfmRep2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fmDM.dstSirie.Active := False;
   Action := caFree;
   fmRep2 := nil;
end;

procedure TfmRep2.FormShow(Sender: TObject);
begin
  fmDM.dstEdIzmer.Active := True;
end;

end.
