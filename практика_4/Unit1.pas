unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    UpDown1: TUpDown;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit3: TEdit;
    Button3: TButton;
    ColorDialog1: TColorDialog;
    ColorDialog2: TColorDialog;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x, y: integer;
begin
  // ���� ����� � ���� �������
  PaintBox1.Canvas.Brush.Color := ColorDialog1.Color;
  PaintBox1.Canvas.Pen.Color := ColorDialog2.Color;

  // line thickness
  PaintBox1.Canvas.Pen.Width := StrToInt(Edit3.Text);

  //type of line
  if ComboBox2.Text = '�������� �����' then PaintBox1.Canvas.Pen.Style := psSolid;
  if ComboBox2.Text = '��������� �����' then PaintBox1.Canvas.Pen.Style := psDash;
  if ComboBox2.Text = '���������� �����' then PaintBox1.Canvas.Pen.Style := psDot;
  if ComboBox2.Text = '�����-���������� �����' then PaintBox1.Canvas.Pen.Style := psDashDot;
  if ComboBox2.Text = '�����, ��������� ����� � ��� ��������' then PaintBox1.Canvas.Pen.Style := psDashDotDot;
  if ComboBox2.Text = '������������� �����' then PaintBox1.Canvas.Pen.Style := psClear;


   // brush style
  if ListBox1.Items[ListBox1.ItemIndex] = '�������� �������' then PaintBox1.Canvas.Brush.Style := bsSolid;
  if ListBox1.Items[ListBox1.ItemIndex] = '������� �� �������������' then PaintBox1.Canvas.Brush.Style := bsClear;
  if ListBox1.Items[ListBox1.ItemIndex] = '�������������� ���������' then PaintBox1.Canvas.Brush.Style := bsHorizontal;
  if ListBox1.Items[ListBox1.ItemIndex] = '������������ ���������' then PaintBox1.Canvas.Brush.Style := bsVertical;
  if ListBox1.Items[ListBox1.ItemIndex] = '������������ ��������� � �������� ����� �����' then PaintBox1.Canvas.Brush.Style := bsBDiagonal;
  if ListBox1.Items[ListBox1.ItemIndex] = '������������ ��������� � �������� ����� ������' then PaintBox1.Canvas.Brush.Style := bsFDiagonal;
  if ListBox1.Items[ListBox1.ItemIndex] = '�������������-������������ ���������, � ������' then PaintBox1.Canvas.Brush.Style := bsCross;
  if ListBox1.Items[ListBox1.ItemIndex] = '������������ ���������, � ������' then PaintBox1.Canvas.Brush.Style := bsDiagCross;

  x:= strtoint(Edit1.text);
  y:= strtoint(Edit2.text);

  if ComboBox1.Text = '�������' then
    PaintBox1.Canvas.Rectangle(x, y, x + 200, y + 200);

  if ComboBox1.Text = '����' then
    PaintBox1.Canvas.Ellipse(x, y, x + 200, y + 200);


  if ComboBox1.Text = '�����������' then     //������� ����� �����
    begin
      PaintBox1.Canvas.MoveTo(x, y);
      PaintBox1.Canvas.LineTo( x + 200, y + 200);
      PaintBox1.Canvas.LineTo( x - 200, y + 200);
      paintBox1.Canvas.LineTo( x, y);
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    PaintBox1.Canvas.Brush.Color := ColorDialog1.Color;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if ColorDialog2.Execute then
    PaintBox1.Canvas.Pen.Color := ColorDialog2.Color;
end;

end.
