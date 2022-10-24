unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; s: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var words: Tarray<string> ;  i: integer;
begin
  if edit1.text <> '' then begin
     s:= edit1.text;
     words:= s.split([' ']);
     for i := 0 to length(words) - 1 do
       memo1.lines.Text:= memo1.lines.Text + words[i] + #10;
  end;

end;

end.
