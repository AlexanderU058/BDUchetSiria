program Project;

uses
  Vcl.Forms,
  MAIN in 'MAIN.pas' {fmMain},
  SIRIE in 'SIRIE.pas' {fmSirie},
  DM in 'DM.pas' {fmDM: TDataModule},
  NAKLPOST in 'NAKLPOST.pas' {fmNaklPost},
  EDIZMER in 'EDIZMER.pas' {fmEdIzmer},
  Add_SIRIE in 'Add_SIRIE.pas' {fmAddSirie},
  Edit_SIRIE in 'Edit_SIRIE.pas' {fmEditSirie},
  Add_POST in 'Add_POST.pas' {fmAddPostavshik},
  Edit_POST in 'Edit_POST.pas' {fmEditPostavshik},
  Add_NAKL in 'Add_NAKL.pas' {fmAddNakladnaya},
  Edit_NAKL in 'Edit_NAKL.pas' {fmEditNakladnaya},
  Add_EDIZMER in 'Add_EDIZMER.pas' {fmAddEdIzmer},
  Edit_EDIZMER in 'Edit_EDIZMER.pas' {fmEditEdIzmer},
  Query1 in 'Query1.pas' {fmQuery1},
  Query2 in 'Query2.pas' {fmQuery2},
  Query3 in 'Query3.pas' {fmQuery3},
  Rep1 in 'Rep1.pas' {fmRep1},
  Rep2 in 'Rep2.pas' {fmRep2},
  Rep3 in 'Rep3.pas' {fmRep3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmDM, fmDM);
  Application.Run;
end.
