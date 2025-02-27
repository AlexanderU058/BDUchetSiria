unit MAIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfmMain = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    mAvtor: TMenuItem;
    mExit: TMenuItem;
    mSirie: TMenuItem;
    mNaklPost: TMenuItem;
    mEdIzmer: TMenuItem;
    mQ1: TMenuItem;
    mQ2: TMenuItem;
    mQ3: TMenuItem;
    mR1: TMenuItem;
    mR2: TMenuItem;
    mR3: TMenuItem;
    procedure mExitClick(Sender: TObject);
    procedure mAvtorClick(Sender: TObject);
    procedure mSirieClick(Sender: TObject);
    procedure mNaklPostClick(Sender: TObject);
    procedure mEdIzmerClick(Sender: TObject);
    procedure mQ1Click(Sender: TObject);
    procedure mQ2Click(Sender: TObject);
    procedure mQ3Click(Sender: TObject);
    procedure mR1Click(Sender: TObject);
    procedure mR2Click(Sender: TObject);
    procedure mR3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses DM, NAKLPOST, SIRIE, POSTAVSHIK, EDIZMER, Query1, Query2, Query3, Rep1,
  Rep2, Rep3;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //��������� ����� � ����� ������
  fmDM.dbSklad.Connected := False;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  //��������� ����� � ����� ������
  fmDM.dbSklad.Connected := True;
end;

procedure TfmMain.mAvtorClick(Sender: TObject);
begin
  Application.MessageBox('�������� ������ �������� ������� ������ 19��2' + sLineBreak + '����� ��������� ���������','���������� �� ������');
end;

procedure TfmMain.mEdIzmerClick(Sender: TObject);
begin
  fmEdIzmer := TfmEdIzmer.Create(Application);
  fmEdIzmer.ShowModal;
end;

procedure TfmMain.mExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmMain.mNaklPostClick(Sender: TObject);
begin
  fmNaklPost := TfmNaklPost.Create(Application);
  fmNaklPost.ShowModal;
end;

procedure TfmMain.mQ1Click(Sender: TObject);
begin
  fmQuery1 := TfmQuery1.Create(Application);
  fmQuery1.ShowModal;
end;

procedure TfmMain.mQ2Click(Sender: TObject);
begin
  fmQuery2 := TfmQuery2.Create(Application);
  fmQuery2.ShowModal;
end;

procedure TfmMain.mQ3Click(Sender: TObject);
begin
  fmQuery3 := TfmQuery3.Create(Application);
  fmQuery3.ShowModal;
end;

procedure TfmMain.mR1Click(Sender: TObject);
begin
  fmRep1 := TfmRep1.Create(Application);
  fmRep1.ShowModal;
end;

procedure TfmMain.mR2Click(Sender: TObject);
begin
  fmRep2 := TfmRep2.Create(Application);
  fmRep2.ShowModal;
end;

procedure TfmMain.mR3Click(Sender: TObject);
begin
  fmRep3 := TfmRep3.Create(Application);
  fmRep3.ShowModal;
end;

procedure TfmMain.mSirieClick(Sender: TObject);
begin
  fmSirie := TfmSirie.Create(Application);
  fmSirie.ShowModal;
end;



end.
