unit uFrmMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TForm3 = class(TForm)
    LytMenu: TLayout;
    RecMenuPrincipal: TRectangle;
    LblMenuPrincipal: TLabel;
    RecMenuOpcoes: TRectangle;
    LblMenuOpcoes: TLabel;
    RecMenuSelecionador: TRectangle;
    RecMenuBluetooth: TRectangle;
    LblMenuBluetooth: TLabel;
    procedure RecMenuPrincipalClick(Sender: TObject);
  private
    procedure OnMenuClick(ASender: TObject);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  FMX.Ani;

{$R *.fmx}

{ TForm3 }

procedure TForm3.OnMenuClick(ASender: TObject);
var
  LRectangleMenu: TRectangle;
  I: Integer;
begin
  if not (ASender is TRectangle) then
    Exit;

  LblMenuPrincipal.FontColor := $FF646464;
  LblMenuOpcoes.FontColor := $FF646464;
  LblMenuBluetooth.FontColor := $FF646464;

  LRectangleMenu :=  TRectangle(ASender);

  TAnimator.AnimateFloat(recMenuSelecionador,'Position.X', LRectangleMenu.Position.X + (LRectangleMenu.Width / 2) - 20, 0.2);

  for I := 0 to Pred(LRectangleMenu.ChildrenCount) do
  begin
    if LRectangleMenu.Children[I] is TLabel then
      TLabel(LRectangleMenu.Children[I]).FontColor := TAlphaColors.White;
  end;
end;

procedure TForm3.RecMenuPrincipalClick(Sender: TObject);
begin
  OnMenuClick(Sender);
end;

end.
