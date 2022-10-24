unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    listbox1: TListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    TabSheet3: TTabSheet;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    fl: file of real;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var s: string; words: Tarray<string>; num: real;  i: byte;
begin
  if edit1.text <> '' then begin
    s:= edit1.text;
    words:= s.split([' ']);

    assignfile(fl, 'typed_file.txt'); rewrite(fl);
    for i := 0 to length(words)-1 do begin
      num:= strtofloat(words[i]);
      write(fl, num);
    end;
    closefile(fl);

    num:= 0.0;
    reset(fl);
    while not eof(fl) do begin
      read(fl, num);
      listbox1.Items.text:= listbox1.Items.text + floattostr(num) + #13;
    end;
    closefile(fl);
   // listbox1.Items.LoadFromFile('typed_file.txt');
     pagecontrol1.Pages[1].Caption:= 'new tab sheet';
  end;
end;

end.
