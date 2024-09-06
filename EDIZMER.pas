unit EDIZMER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfmEdIzmer = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    buExit: TButton;
    buAdd: TButton;
    buEdit: TButton;
    buDelete: TButton;
    edFiltr: TEdit;
    buRefresh: TButton;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buExitClick(Sender: TObject);
    procedure buRefreshClick(Sender: TObject);
    procedure buDeleteClick(Sender: TObject);
    procedure buAddClick(Sender: TObject);
    procedure buEditClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edFiltrChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdIzmer: TfmEdIzmer;

implementation

{$R *.dfm}

uses DM, Add_EDIZMER, Edit_EDIZMER;

procedure TfmEdIzmer.buAddClick(Sender: TObject);
begin
//Создать форму Add
  fmAddEdIzmer := TfmAddEdIzmer.Create(Application);
  //Выполняем на этой форме добавление записи
  if fmAddEdIzmer.ShowModal = mrOK then
  begin
    //Подтверждаем транзакцию
    fmDM.dstEdIzmer.Post;
    StatusBar1.Panels[1].Text := IntToStr(fmDM.dstEdIzmer.RecordCount);
  end
  //или откатываем её
  else fmDM.dstEdIzmer.Cancel;
end;

procedure TfmEdIzmer.buDeleteClick(Sender: TObject);
begin
with fmDM do
  begin
    if dstEdIzmer.RecordCount = 0  then exit;
    if Application.MessageBox('Удалить текущую запись?', 'Удаление', MB_YESNO) = mrYes then dstEdIzmer.Delete;
    StatusBar1.Panels[1].Text := IntToStr(dstEdIzmer.RecordCount);
  end;
end;

procedure TfmEdIzmer.buEditClick(Sender: TObject);
begin
//Проверить существуют ли записи в таблице
  if fmDM.dstEdIzmer.RecordCount = 0  then exit
  //Создать форму fmChange
  else fmEditEdIzmer := TfmEditEdIzmer.Create(Application);
   //Выполняем на этой форме изменение записи
  if fmEditEdIzmer.ShowModal = mrOK then
  begin
    //Подтверждаем транзакцию
    fmDM.dstEdIzmer.Post;
    StatusBar1.Panels[1].Text := IntToStr(fmDM.dstEdIzmer.RecordCount);
  end
  //или откатываем ее
  else fmDM.dstEdIzmer.Cancel;
end;

procedure TfmEdIzmer.buExitClick(Sender: TObject);
begin
  fmEdIzmer.Close;
end;

procedure TfmEdIzmer.buRefreshClick(Sender: TObject);
begin
with fmDM do
    begin
    //Обновляем набор данных dstEdIzmer
      dstEdIzmer.FullRefresh;
    //Выводим количество записей в таблице EDIZMER
      StatusBar1.Panels[1].Text := IntToStr(dstEdIzmer.RecordCount);
   end;
end;

procedure TfmEdIzmer.CheckBox1Click(Sender: TObject);
var
  fn : string;
begin
  fn := '';
  if (CheckBox1.Checked) and (edFiltr.Text<>'') then
  begin
    //Если свойство checked установлено и есть образец для поиска
    fn := '(NAZVANIE LIKE'''+edFiltr.Text+'%'')';
    fmDM.dstEdIzmer.Close;
    fmDM.dstEdIzmer.MainWhereClause := fn;
    fmDM.dstEdIzmer.Open;
  end
  else
  begin
    //Если свойство checked не установлено
    fmDM.dstEdIzmer.Close;
    fmDM.dstEdIzmer.MainWhereClause := fn;
    fmDM.dstEdIzmer.Open;
  end;
end;









procedure TfmEdIzmer.DBGrid1TitleClick(Column: TColumn);
var
cn : string;
begin
  cn := Column.FieldName;
  if fmDM.dstEdIzmer.OrderClause <> cn  then
  begin
    fmDM.dstEdIzmer.Close;
    fmDM.dstEdIzmer.OrderClause := cn;
    fmDM.dstEdIzmer.Open;
  end;
end;

procedure TfmEdIzmer.edFiltrChange(Sender: TObject);
var
  fn : string;
begin
    fn := '';
  if (CheckBox1.Checked) and (edFiltr.Text<>'') then
  begin
    //Если свойство checked установлено и есть образец для поиска
    fn := '(NAZVANIE LIKE '''+edFiltr.Text+'%'')';
    fmDM.dstEdIzmer.Close;
    fmDM.dstEdIzmer.MainWhereClause := fn;
    fmDM.dstEdIzmer.Open;
  end
  else
  begin
    //Если свойство checked не установлено
    fmDM.dstEdIzmer.Close;
    fmDM.dstEdIzmer.MainWhereClause := fn;
    fmDM.dstEdIzmer.Open;
  end;
end;

procedure TfmEdIzmer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //Запрос закрывается.
   fmDM.dstEdIzmer.Active := False;

end;

procedure TfmEdIzmer.FormShow(Sender: TObject);
begin
with fmDM do
  begin
    //Активизируем запрос
    dstEdIzmer.Active := True;
    //Выводим количество записей в таблице EDIZMER
    StatusBar1.Panels[1].Text := IntToStr(dstEdIzmer.RecordCount);
  end;
end;
end.
