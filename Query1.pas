unit QUERY1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfmQuery1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    buSpisok: TButton;
    buExit: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buExitClick(Sender: TObject);
    procedure buSpisokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQuery1: TfmQuery1;

implementation

{$R *.dfm}

uses DM;

procedure TfmQuery1.buExitClick(Sender: TObject);
begin
fmQuery1.Close;
end;

procedure TfmQuery1.buSpisokClick(Sender: TObject);
begin
with fmDM do
 begin
    if dstQuery1.Active then dstQuery1.Close;
    dstQuery1.SelectSQL.Clear;
    dstQuery1.SelectSQL.Add('SELECT DISTINCT NAZVANIE');
    dstQuery1.SelectSQL.Add('FROM POSTAVSHIK');
    dstQuery1.SelectSQL.Add('ORDER BY NAZVANIE');
    dstQuery1.Open;
  end;
end;

procedure TfmQuery1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   fmQuery1 := nil;
end;

end.

