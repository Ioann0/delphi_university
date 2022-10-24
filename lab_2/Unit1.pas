unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, modul_1,
  Vcl.Grids, System.ImageList, Vcl.ImgList, Vcl.Samples.Calendar, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.Tabs;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    lab21: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
    N2: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N23: TMenuItem;
    ComboBox1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N25: TMenuItem;
    N18: TMenuItem;
    N26: TMenuItem;
    N19: TMenuItem;
    N27: TMenuItem;
    N31: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N110: TMenuItem;
    N28: TMenuItem;
    N111: TMenuItem;
    N29: TMenuItem;
    N112: TMenuItem;
    N210: TMenuItem;
    Memo1: TMenuItem;
    ListBox1: TMenuItem;
    ComboBox2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Memo2: TMemo;
    Label3: TLabel;
    Memo3: TMemo;
    ListBox2: TListBox;
    ComboBox3: TComboBox;
    Label4: TLabel;
    edit1: TEdit;
    Label5: TLabel;
    N113: TMenuItem;
    N211: TMenuItem;
    N114: TMenuItem;
    N212: TMenuItem;
    N115: TMenuItem;
    N213: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    StringGrid1: TStringGrid;
    Label8: TLabel;
    Memo4: TMemo;
    ListBox3: TListBox;
    ComboBox4: TComboBox;
    N24: TMenuItem;
    Label9: TLabel;
    Memo5: TMemo;
    ComboBox5: TComboBox;
    PopUpMenu: TPopupMenu;
    TabControl1: TTabControl;
    Calendar1: TCalendar;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    SpinEdit1: TSpinEdit;
    Edit2: TEdit;
    Timer1: TTimer;
    Panel2: TPanel;
    Label12: TLabel;
    Edit3: TEdit;
    TabSheet5: TTabSheet;
    TabControl2: TTabControl;
    Calendar2: TCalendar;
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N213Click(Sender: TObject);
    procedure N212Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Calendar1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure TabControl2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; //fl: textfile;
  x: string;

implementation

{$R *.dfm}

procedure TForm1.Calendar1Change(Sender: TObject);
Const
  A : Array[1..7] of string[11] =
    ('�����������', '�����������', '�������', '�����', '�������', '�������', '�������');
begin
  Edit2.Text := A[DayOfWeek(Calendar1.CalendarDate)];
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
begin
  if ComboBox5.Text = '����' then begin
    Memo5.Text := '���� � ���� �� ������ ����� ����, ����� ������ � ������, ����������������� �������� ������� ������������ ���������� �����. ' + #13#10;
    Memo5.Text := Memo5.Text + ' � ���� ������� ������������� ��� ����� �������, � ���� ����� ��������. ' + #13#10;
    Memo5.Text := Memo5.Text + '���� ������ ���� ����������� � ����������� �� �������, �������� � ��������. ';
    Memo5.Text := Memo5.Text + ' ������� �� ��� �������: � �������� ��������� � ����, ���� � �������, � ����� � �������, ������ � �������.';
  end;

  if ComboBox5.Text = '����' then begin
    Memo5.Text := '���� - ���� �� ������ ����� ����, ����� ��������� �������� ����� ������ � ������. ' + #10#13;
    Memo5.Text := Memo5.Text + '�������� ������� ����� ������� ���� � ���������� ������ ����������� (���� 0 �������� �� �������) �� ������ ������� �����, �� ����������� ����� �������� � ������� ����. ' + #10#13;
    Memo5.Text := Memo5.Text + '����������� ���� ������� �� ��� �������: � �������� ��������� ��� � �������, ������ � �������, � ����� � ����, ���� � ������';

  end;

  if ComboBox5.Text = '�����' then
    Memo5.Text := '����� - ���� �� ������ ������ ����, ����� ����� � �����. ' + #10#13;
    Memo5.Text :=  Memo5.Text + '����� � ���������� �����, ����� ������� ���������� ��������� ���, � ���������� ���������� ����������� ���������� �����. ' + #10#13;
    Memo5.Text :=  Memo5.Text + '������� �� ��� �������: � �������� ��������� � ��������, ������� � ������, � ����� � �����, ������ � ���. ��������� � ����������������� ������.';

  if ComboBox5.Text = '�����' then begin
    Memo5.Text := '����� - ���� �� ������ ����� ����, ���������� ����� ����� ����� � �����.' + #10#13;
    Memo5.Text := Memo5.Text + '�� ���� ������ ����� � �������� ������� ���� ��������, �� ����� ���� �� ����� �� � ����� ������ �� �����. ������� ������ �������� ������������ � ������������� �������������.' + #10#13;
    Memo5.Text := Memo5.Text + '���������� ��������� ������ ����������� ������ � ��������� �����, ������������ � ����������� �� �������� �������, ������� � �������. ����� � �������� ��������� �����, �� � ����� ��������� ����� � ��������.';
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.N5.Enabled := False;
  Form1.N27.Enabled := False;
  Form1.N31.Enabled := False;
  Form1.N22.Enabled := False;

  Calendar1.CalendarDate := Date;   // �������� ����
  TabControl1.TabIndex := Calendar1.Month - 1;  // ����� � TabConrol1
  SpinEdit1.Value := Calendar1.Year;    // ��� � SpinEdit1
end;

procedure TForm1.N110Click(Sender: TObject);
begin
  Form1.Memo2.Lines.LoadFromFile('data.txt');

  assignfile(fl, 'data.txt'); reset(fl);
  //readln(fl, i); //val(i, len, c);
  while not eof(fl) do begin
    readln(fl, i);
    dopolnen(beg2l, i);
  end;
  closefile(fl);

  Form1.N11.Enabled := False;
  Form1.N12.Enabled := True;

  Form1.N110.Enabled := False;
  Form1.N28.Enabled := True;

  Form1.N1.Enabled := True;
  Form1.N27.Enabled := True;
end;

procedure TForm1.N111Click(Sender: TObject);
var i: integer;
begin
  if edit1.text = '' then begin
    showmessage('�� �� ����� �����(�����!). ��������� ����');
    exit;
  end;
  val(edit1.text, len, i); // i - error code
  if len < 0 then begin
    showmessage('����� �� ����� ���� �������������! ������ ����� � ���������������!')
  end;

  if i <> 0 then begin
    showmessage('����� ������� � �������. ��������� ����!');
    exit;
  end;
  //obr
  zadanie(len);
  //obr
  label5.Caption:= '��������� ������ ���������';

  form1.N12.enabled:= false;
  form1.N111.enabled:= false;

  //����� � ���� MainMenu only for 1 task
  Form1.N2.Enabled := True;
  Form1.N13.Enabled := True;
  Form1.N14.Enabled := False;

  //  ����� MainMenu
  Form1.N3.Enabled := True;
  Form1.N24.Enabled := False;
  Form1.N25.Enabled := False;
  Form1.N26.Enabled := False;

  //popupMenu
  Form1.N31.Enabled := True;
  Form1.N112.Enabled := True;
  Form1.N210.Enabled := False;
  Form1.N5.Enabled := True;
  Form1.N213.Enabled := False;
  Form1.N212.Enabled := False;
  Form1.N211.Enabled := False;
end;

procedure TForm1.N112Click(Sender: TObject);
  var p: PSTRC; f: textfile;
begin
  assignfile(f, 'lab1_zadanie1.txt'); rewrite(f);
  IsItEmpty;
  if boo = false then begin exit; end;
  p:= beg2l;
  writeln(f, '��� �������� ������ ����� ���������');
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      writeln(f, p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;
  closefile(f);

  Form1.N112.Enabled := False;
end;

procedure TForm1.N113Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  Memo3.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      Memo3.text:= Memo3.text + p^.strr + #13#10;
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;

  Form1.N16.Enabled := False;
end;

procedure TForm1.N114Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  ListBox2.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      //s:= s + p^.strr + #10#13;
      ListBox2.Items.Add(p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;
  //ListBox2.Items.Add(s);

  Form1.N17.Enabled := False;
end;

procedure TForm1.N115Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  ComboBox3.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      //s:= s + p^.strr + #10#13;
      ComboBox3.Items.Add(p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;

//  ComboBox3.Items.Add(s);

  Form1.N18.Enabled := False;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  simple_sort();
  Form1.Memo2.Lines.LoadFromFile('new_data.txt');

  assignfile(fl, 'new_data.txt'); reset(fl);
  //readln(fl, i); //val(i, len, c);
  while not eof(fl) do begin
    readln(fl, i);
    dopolnen(beg2l, i);
  end;
  closefile(fl);

  Form1.N11.Enabled := False;
  Form1.N12.Enabled := True;

  Form1.N110.Enabled := False;
  Form1.N28.Enabled := True;

  Form1.N1.Enabled := True;
  Form1.N27.Enabled := True;

end;

procedure TForm1.N12Click(Sender: TObject);
var i: integer;
begin
  if edit1.text = '' then begin
    showmessage('�� �� ����� �����(�����!). ��������� ����');
    exit;
  end;
  val(edit1.text, len, i); // i - error code
  if len < 0 then begin
    showmessage('����� �� ����� ���� �������������! ������ ����� � ���������������!')
  end;

  if i <> 0 then begin
    showmessage('����� ������� � �������. ��������� ����!');
    exit;
  end;
  //obr
  zadanie(len);
  //obr
  label5.Caption:= '��������� ������ ���������';

  form1.N12.enabled:= false;
  form1.N111.enabled:= false;

  //����� � ���� MainMenu only for 1 task
  Form1.N2.Enabled := True;
  Form1.N13.Enabled := True;
  Form1.N14.Enabled := False;

  //  ����� MainMenu
  Form1.N3.Enabled := True;
  Form1.N24.Enabled := False;
  Form1.N25.Enabled := False;
  Form1.N26.Enabled := False;

  //popupMenu
  Form1.N31.Enabled := True;
  Form1.N112.Enabled := True;
  Form1.N210.Enabled := False;
  Form1.N5.Enabled := True;
  Form1.N213.Enabled := False;
  Form1.N212.Enabled := False;
  Form1.N211.Enabled := False;
end;

procedure TForm1.N13Click(Sender: TObject);
var p: PSTRC; f: textfile;
begin
  assignfile(f, 'lab1_zadanie1.txt'); rewrite(f);
  IsItEmpty;
  if boo = false then begin exit; end;
  p:= modul_1.beg2l;
  writeln(f, '��� �������� ������ ����� ���������');
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      writeln(f, p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;
  closefile(f);

  Form1.N112.Enabled := False;

end;

procedure TForm1.N14Click(Sender: TObject);
var f: textfile;
begin


Form1.N112.Enabled := False;
  Form1.N14.Enabled := False;
  Form1.N210.Enabled := False;

end;


procedure TForm1.N16Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  Memo3.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      Memo3.text:= Memo3.text + p^.strr + #13#10;
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;

  Form1.N113.Enabled := False;

end;

procedure TForm1.N17Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  ListBox2.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      //s:= s + p^.strr + #10#13;
      ListBox2.Items.Add(p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;
  //ListBox2.Items.Add(s);

  Form1.N114.Enabled := False;

end;

procedure TForm1.N18Click(Sender: TObject);
var p: PSTRC; s: string;
begin
  ComboBox3.Clear;
  IsItEmpty;
  if boo = false then begin showmessage('������ ������!'); exit; end;
  p:= beg2l;
  while (p^.right <> nil) do p:= p^.right;
  repeat
    if length(p^.strr) < len then begin
      //s:= s + p^.strr + #10#13;
      ComboBox3.Items.Add(p^.strr);
      p:= p^.left;
    end else p:= p^.left;
  until p = nil;

//  ComboBox3.Items.Add(s);

  Form1.N115.Enabled := False;
end;

procedure TForm1.N210Click(Sender: TObject);
var f: textfile;
begin
//  assignfile(f, 'lab2_zadanie2.txt'); rewrite(f);
//  writeln(f, '��� �������� ������ ����� ���������');
//
//  until p = nil;
//  closefile(f);
//
//  Form1.N112.Enabled := False;

Form1.N112.Enabled := False;
  Form1.N14.Enabled := False;
  Form1.N210.Enabled := False;

end;

procedure TForm1.N211Click(Sender: TObject);
begin
  Memo4.Lines.LoadFromFile('lab2_zadanie2.txt');
  Form1.N24.Enabled := False;
  Form1.N211.Enabled := False;
end;

procedure TForm1.N212Click(Sender: TObject);
begin
  ListBox3.Items.LoadFromFile('lab2_zadanie2.txt');
  Form1.N25.Enabled := False;
  Form1.N212.Enabled := False;
end;

procedure TForm1.N213Click(Sender: TObject);
begin
 ComboBox4.Items.LoadFromFile('lab2_zadanie2.txt');
  Form1.N26.Enabled := False;
  Form1.N213.Enabled := False;
end;

procedure TForm1.N21Click(Sender: TObject);
var M: TZ;
    b: char;
    fr: textfile;
    cur: PSTR; //������
begin
  assignfile(fr, 'airplanes.txt'); reset(fr);
  //writeln('--���������� ������ ������ ����������--',#10);
  while not eof(fr) do
    with M do begin
      readln(fr, name, prod, year_of_comm, max_range, num_of_pass_seats);
      name:=FILTR(name);
      prod:=FILTR(prod);
      //P(M);
      DOP(s, M);
    end;
      closefile(fr);

  if PP(s) then exit;
  cur := s;
  With Form1.StringGrid1 do begin
    ColCount := 5;
    Cells[0, 0] := '��������';
    Cells[1, 0] := '�������������';
    Cells[2, 0] := '��� ����� � �����';
    Cells[3, 0] := '������������ ���������';
    Cells[4, 0] := '���������� ������������ ����';
    RowCount := 0;
    cur:= s;
    repeat
    RowCount := RowCount + 1;
      With cur^ do begin
        Cells[0, RowCount - 1] := name;
        Cells[1, RowCount - 1] := prod;
        Cells[2, RowCount - 1] := IntToStr(year_of_comm);
        Cells[3, RowCount - 1] := IntToStr(max_range);
        Cells[4, RowCount - 1] := IntToStr(num_of_pass_seats);
      end;
      cur := cur^.PTR;
    until cur = nil;
  end;

  Form1.N21.Enabled := False;
  Form1.N3.Enabled := False;

  Form1.N22.Enabled := True;
  Form1.N28.Enabled := False;

  Form1.N1.Enabled := True;
  Form1.N2.Enabled := False;

  Form1.N27.Enabled := True;
  Form1.N28.Enabled := False;
end;

procedure TForm1.N22Click(Sender: TObject);
var f: textfile;
  i: integer;
  cur: PSTR;
  fl: textfile;
  t_name: string;
label MF;

begin
   if edit3.text = '' then begin
    showmessage('�� �� ����� �������� ��������. ��������� ����!');
    exit;
  end;
  //val(edit2.text, len, i); // i - error code


  assignfile(fl, 'unique.txt'); reset(fl);
  assignfile(fr, 'lab2_zadanie2.txt'); rewrite(fr);
  //writeln(fr, #10);
  if PP(S) then exit;
  writeln(fr, '///����� � ������ �� ����������� ��������\\');

  t_name:= edit3.text;
  t_name:= FILTR(t_name);
  writeln(fr, '����� �� �������� ��������: ', t_name);
  if t_name= '' then begin
     writeln(fr, '��� ������ ��� ������'); goto MF;
  end;
  cur:= s;
  while (cur <> nil) and (FILTR(cur^.name) <> t_name) do
    cur := cur^.PTR;
  if cur = nil then Writeln(fr, '��� ������ ��������')
               else begin ssh_key:= 1; P(cur^); end;
  MF: Writeln(fr, '---����� ��������---');
  closefile(fl);
  closefile(fr);



  Form1.N2.Enabled := True;
  Form1.N3.Enabled := True;

  Form1.N22.Enabled := False;
  Form1.N29.Enabled := False;

  Form1.N5.Enabled := True;
  Form1.N31.Enabled := True;

  Form1.N14.Enabled := True;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
  Memo4.Lines.LoadFromFile('lab2_zadanie2.txt');
  Form1.N24.Enabled := False;
  Form1.N211.Enabled := False;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
  ListBox3.Items.LoadFromFile('lab2_zadanie2.txt');
  Form1.N25.Enabled := False;
  Form1.N212.Enabled := False;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
 ComboBox4.Items.LoadFromFile('lab2_zadanie2.txt');
  Form1.N26.Enabled := False;
  Form1.N213.Enabled := False;
end;

procedure TForm1.N28Click(Sender: TObject);
var M: TZ;
    b: char;
    fr: textfile;
    cur: PSTR; //������
begin
  assignfile(fr, 'airplanes.txt'); reset(fr);
  //writeln('--���������� ������ ������ ����������--',#10);
  while not eof(fr) do
    with M do begin
      readln(fr, name, prod, year_of_comm, max_range, num_of_pass_seats);
      name:=FILTR(name);
      prod:=FILTR(prod);
      //P(M);
      DOP(s, M);
    end;
      closefile(fr);

  if PP(s) then exit;
  cur := s;
  With Form1.StringGrid1 do begin
    ColCount := 5;
    Cells[0, 0] := '��������';
    Cells[1, 0] := '�������������';
    Cells[2, 0] := '��� ����� � �����';
    Cells[3, 0] := '������������ ���������';
    Cells[4, 0] := '���������� ������������ ����';
    RowCount := 0;
    cur:= s;
    repeat
    RowCount := RowCount + 1;
      With cur^ do begin
        Cells[0, RowCount - 1] := name;
        Cells[1, RowCount - 1] := prod;
        Cells[2, RowCount - 1] := IntToStr(year_of_comm);
        Cells[3, RowCount - 1] := IntToStr(max_range);
        Cells[4, RowCount - 1] := IntToStr(num_of_pass_seats);
      end;
      cur := cur^.PTR;
    until cur = nil;
  end;

  Form1.N21.Enabled := False;
  Form1.N3.Enabled := False;

  Form1.N22.Enabled := True;
  Form1.N28.Enabled := False;

  Form1.N1.Enabled := True;
  Form1.N2.Enabled := False;

  Form1.N27.Enabled := True;
  Form1.N28.Enabled := False;
end;

procedure TForm1.N29Click(Sender: TObject);
var f: textfile;
begin
  POISK1(s);
  POISK2(s);
  UD(s);
  Form1.N2.Enabled := True;
  Form1.N3.Enabled := True;

  Form1.N22.Enabled := False;
  Form1.N29.Enabled := False;

  Form1.N5.Enabled := True;
  Form1.N31.Enabled := True;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
close;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  Calendar1.Year := SpinEdit1.Value;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  Calendar1.Month := TabControl1.TabIndex + 1;
end;

procedure TForm1.TabControl2Change(Sender: TObject);
begin
  Calendar2.Month := TabControl2.TabIndex + 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Panel2.Caption:= '���������� �����: ' + TimeToStr(Time);
end;


end.
