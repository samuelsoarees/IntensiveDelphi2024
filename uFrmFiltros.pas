unit uFrmFiltros;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani;

type
  TForm2 = class(TForm)
    recFiltros: TRectangle;
    btn1: TButton;
    btn2: TButton;
    lytFiltros: TLayout;
    rec2: TRectangle;
    fltaniLayout: TFloatAnimation;
    fltaniFiltros: TFloatAnimation;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fltaniLayoutFinish(Sender: TObject);
    procedure fltaniFiltrosFinish(Sender: TObject);
  private
    procedure ExibirFiltros;
    procedure EsconderFiltros;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btn1Click(Sender: TObject);
begin
  EsconderFiltros;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  ExibirFiltros;
end;

procedure TForm2.EsconderFiltros;
begin
  fltaniLayout.Start;
  fltaniFiltros.Start;
end;

procedure TForm2.ExibirFiltros;
begin
  lytFiltros.Opacity := 0;
  lytFiltros.Visible := True;
  recFiltros.Margins.Bottom := -220;

  fltaniLayout.Tag := 0;
  fltaniLayout.StartValue := 0;
  fltaniLayout.StopValue := 1;
  fltaniLayout.Inverse := False;

  fltaniFiltros.Tag := 0;
  fltaniFiltros.StartValue := -220;
  fltaniFiltros.StopValue := -20;
  fltaniFiltros.Inverse := False;

  fltaniLayout.Start;
  fltaniFiltros.Start;
end;

procedure TForm2.fltaniFiltrosFinish(Sender: TObject);
begin
  if fltaniFiltros.Tag = 0 then
  begin
    fltaniFiltros.Tag := 1;
    fltaniFiltros.Inverse := True;
  end
  else
    recFiltros.Margins.Bottom := -220;
end;

procedure TForm2.fltaniLayoutFinish(Sender: TObject);
begin
  if fltaniLayout.Tag = 0 then
  begin
    fltaniLayout.Tag := 1;
    fltaniLayout.Inverse := True;
  end
  else
    lytFiltros.Visible := False;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  lytFiltros.Visible := False;
end;

end.
