program IntensiveDelphiAnimacoes;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmLoading in 'uFrmLoading.pas' {Form1},
  uFrmFiltros in 'uFrmFiltros.pas' {Form2},
  uFrmMenu in 'uFrmMenu.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
