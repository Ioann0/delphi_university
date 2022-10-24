unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    lbl1: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    btn1: TButton;
    btn2: TButton;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure AngleTextOut(
    ACanvas: TCanvas; Angle: Integer);
var
  NewFontHandle,
  OldFontHandle: hFont;
  LogRec       : TLogFont;
begin
  GetObject(ACanvas.Font.Handle, SizeOf(LogRec), Addr(LogRec));
  LogRec.lfEscapement := Angle * 10;
  LogRec.lfOrientation := LogRec.lfEscapement;
  ACanvas.Font.Handle:= CreateFontIndirect(LogRec);
end;


procedure TForm1.BitBtn2Click(Sender: TObject);
var ang: integer;
begin
  if not(Edit2.text = '') then
    if (StrToInt(Edit2.text) >= 0) and (StrToInt(Edit2.text)<=360) then
       ang:= StrToInt(Edit2.text);
    AngleTextOut(Canvas, ang);
    Canvas.Font.Color := Edit1.Font.Color;
    Canvas.Font.Style := Edit1.Font.Style;
    Canvas.Font.Size  := Edit1.Font.Size;
    Canvas.TextOut(400, 200, Edit1.Text);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  FontDialog1.Execute;
  Edit1.Font:=FontDialog1.Font;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  ColorDialog1.Execute;
  Edit1.Font.Color:= ColorDialog1.Color;
end;

end.
