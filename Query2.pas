unit Query2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmQuery2 = class(TForm)
    Panel2: TPanel;
    buSpisok: TButton;
    buExit: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure buExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buSpisokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQuery2: TfmQuery2;

implementation

{$R *.dfm}

uses DM;

procedure TfmQuery2.buExitClick(Sender: TObject);
begin
  fmQuery2.Close;
end;

procedure TfmQuery2.buSpisokClick(Sender: TObject);
begin
with fmDM do
 begin
    if dstQuery2.Active then dstQuery2.Close;
    dstQuery2.SelectSQL.Clear;
    dstQuery2.SelectSQL.Add('SELECT DISTINCT NAZVANIE');
    dstQuery2.SelectSQL.Add('FROM EDIZMER');
    dstQuery2.SelectSQL.Add('ORDER BY NAZVANIE');
    dstQuery2.Open;
  end;
end;

procedure TfmQuery2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   fmQuery2 := nil;
end;

end.
