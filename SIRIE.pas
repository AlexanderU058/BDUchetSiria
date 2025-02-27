unit SIRIE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfmSirie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    buExit: TButton;
    buAdd: TButton;
    buEdit: TButton;
    buDelete: TButton;
    DBGrid1: TDBGrid;
    edFiltr: TEdit;
    buRefresh: TButton;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buExitClick(Sender: TObject);
    procedure buDeleteClick(Sender: TObject);
    procedure buRefreshClick(Sender: TObject);
    procedure buAddClick(Sender: TObject);
    procedure buEditClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edFiltrChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSirie: TfmSirie;

implementation

{$R *.dfm}

uses DM, Add_SIRIE, Edit_SIRIE;

procedure TfmSirie.buAddClick(Sender: TObject);
begin
  //������� ����� Add
  fmAddSirie := TfmAddSirie.Create(Application);
  //��������� �� ���� ����� ���������� ������
  if fmAddSirie.ShowModal = mrOK then
  begin
    //������������ ����������
    fmDM.dstSirie.Post;
    StatusBar1.Panels[1].Text := IntToStr(fmDM.dstSirie.RecordCount);
  end
  //��� ���������� �
  else fmDM.dstSirie.Cancel;
end;



procedure TfmSirie.buDeleteClick(Sender: TObject);
begin
with fmDM do
  begin
    if dstSirie.RecordCount = 0  then exit;
    if Application.MessageBox('������� ������� ������?', '��������', MB_YESNO) = mrYes then dstSirie.Delete;
    StatusBar1.Panels[1].Text := IntToStr(dstSirie.RecordCount);
  end;
end;

procedure TfmSirie.buEditClick(Sender: TObject);
begin
//��������� ���������� �� ������ � �������
  if fmDM.dstSirie.RecordCount = 0  then exit
  //������� ����� fmEditSirie
  else fmEditSirie := TfmEditSirie.Create(Application);
   //��������� �� ���� ����� ��������� ������
  if fmEditSirie.ShowModal = mrOK then
  begin
    //������������ ����������
    fmDM.dstSirie.Post;
    StatusBar1.Panels[1].Text := IntToStr(fmDM.dstSirie.RecordCount);
  end
  //��� ���������� ��
  else fmDM.dstSirie.Cancel;
end;

procedure TfmSirie.buExitClick(Sender: TObject);
begin
  fmSirie.Close;
end;

procedure TfmSirie.buRefreshClick(Sender: TObject);
begin
with fmDM do
    begin
    //��������� ����� ������ dstSirie
      dstSirie.FullRefresh;
    //������� ���������� ������� � ������� SIRIE
      StatusBar1.Panels[1].Text := IntToStr(dstSirie.RecordCount);
   end;
end;



procedure TfmSirie.CheckBox1Click(Sender: TObject);
var
  fn : string;
begin
  fn := '';
  if (CheckBox1.Checked) and (edFiltr.Text<>'') then
  begin
    //���� �������� checked ����������� � ���� ������� ��� ������
    fn := '(NAIMENOVANIE LIKE'''+edFiltr.Text+'%'')';
    fmDM.dstSirie.Close;
    fmDM.dstSirie.MainWhereClause := fn;
    fmDM.dstSirie.Open;
  end
  else
  begin
    //���� �������� checked �� �����������
    fmDM.dstSirie.Close;
    fmDM.dstSirie.MainWhereClause := fn;
    fmDM.dstSirie.Open;
  end;
end;


procedure TfmSirie.DBGrid1TitleClick(Column: TColumn);
var
cn : string;
begin
  cn := Column.FieldName;
  if fmDM.dstSirie.OrderClause <> cn  then
  begin
    fmDM.dstSirie.Close;
    fmDM.dstSirie.OrderClause := cn;
    fmDM.dstSirie.Open;
  end;
end;


procedure TfmSirie.edFiltrChange(Sender: TObject);
var
  fn : string;
begin
    fn := '';
  if (CheckBox1.Checked) and (edFiltr.Text<>'') then
  begin
    //���� �������� checked ����������� � ���� ������� ��� ������
    fn := '(NAIMENOVANIE LIKE '''+edFiltr.Text+'%'')';
    fmDM.dstSirie.Close;
    fmDM.dstSirie.MainWhereClause := fn;
    fmDM.dstSirie.Open;
  end
  else
  begin
    //���� �������� checked �� �����������
    fmDM.dstSirie.Close;
    fmDM.dstSirie.MainWhereClause := fn;
    fmDM.dstSirie.Open;
  end;
end;


procedure TfmSirie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with fmDM do
  begin
    //������ �����������.
    dstSirie.Active := False;
  end;
end;

procedure TfmSirie.FormShow(Sender: TObject);
begin
  with fmDM do
  begin
    //������������ ������
    dstSirie.Active := True;
    //������� ���������� ������� � ������� SIRIE
    StatusBar1.Panels[1].Text := IntToStr(dstSirie.RecordCount);
end;

end;

end.
