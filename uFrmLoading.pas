unit uFrmLoading;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani;

type
  TForm1 = class(TForm)
    lytLoading: TLayout;
    rec1: TRectangle;
    img1: TImage;
    fltaniLoading: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
