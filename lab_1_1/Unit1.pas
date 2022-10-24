unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, OKCANCL2, modul_1_1, unit2, unit3;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var f_name: string;
    mcol, mrow: integer;
begin
     if OpenDialog1.Execute then  begin
      f_name:= OpenDialog1.FileName;
//  assignfile(fr, 'output.res'); rewrite(fr);
    end
    else begin
          ShowMessage('�� �� ����� ��� �����. ��������� ����');
          Exit; End;
     if OKRightDlg.ShowModal = mrOK
      then begin
                mcol:= StrToInt(OKRightDlg.Edit1.Text);
                mrow:= StrToInt(OKRightDlg.Edit2.Text);

      if (mcol = 0) Or (mrow = 0) then begin
                             ShowMessage('�� ����� ������� ��������. ��������� ����');
                             exit; end;
      if (mcol <> mrow)  then begin
        showmessage('�� ����� ������ �������� ������� � ������. ������� ������ ���� ����������! ��������� ����');
        exit;
      end;
           end;
  array_input(x, mcol, mrow);
  Label1.Caption := '������� �������� ������';
  Button2.Enabled := True;
  Button2.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  array_output(x);
  number_of_negative_elements_of_main_and_secondary_diag(x, y, main_noned);
  number_of_such_elements_in_each_odd_column(x, amount);
  changing_the_elements_of_the_main_diagonal_of_the_matrix(x);
  Sort1(x);
  array_output(x);

  Label1.Caption:= '��������� ���������(�����������) ������';
  Button2.Enabled:= False;
  Button3.Enabled:= True;
  Button3.SetFocus;
 // inttostr(123);
 //showmessage(Format('%f', 123.132));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  MY_OUTPUT;
  label1.Caption:= '�������� ���������� � ��������� ����';
  Button3.Enabled:= False;
  Button4.Enabled:= True;
  Button4.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form2.Show;
  Form3.Show;
  Form1.FormStyle:= fsStayOntop;
  Form1.FormStyle:= fsNormal;
  Panel1.Visible:= True;
  label1.Caption:= '������� ����� ��� ������ �����������';

  Button4.Enabled:= False;
  Button5.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.ListBox1.Items.LoadFromFile('results.txt');
  Label1.Caption:= '�������� ���������� � ���� ListBox1';
  Button5.Enabled:= False;
  Button6.SetFocus;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form2.Combobox1.Items.LoadFromFile('results.txt');
  Label1.Caption:= '�������� ���������� � ���� ComboBox11';
  Button6.Enabled:= False;
  Button7.SetFocus;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form3.Memo1.Lines.LoadFromFile('results.txt');
  Label1.Caption:= '�������� ���������� � ���� Memo1';
  Button7.Enabled:= False;
  Button8.SetFocus;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i, j, ix: integer; S : string[14];
begin
with Form3.StringGrid1 do begin
  ColCount:= modul_1_1.col; FixedCols:= 0;
  RowCount:= modul_1_1.row+1; FixedRows:= 1;

      //������� ������
    for j:= 0 to modul_1_1.col - 1 do
      Cells[j,0] := '   ' + IntToStr(j+1);

    array_input(z, modul_1_1.col, modul_1_1.row);
    for i := 0 to modul_1_1.col-1 do
      for j := 0 to modul_1_1.col-1 do
        begin
         Str(Z[i*modul_1_1.col+j]:10:5,s);
         cells[j,i+1] := s;
        end;
  END;

  with Form3.StringGrid2 do begin
  ColCount:= modul_1_1.col; FixedCols:= 0;
  RowCount:= modul_1_1.row+1; FixedRows:= 1;

      //������� ������
    for j:= 0 to modul_1_1.col - 1 do
      Cells[j,0] := '   ' + IntToStr(j+1);

    //array_input(z, modul_1_1.col, modul_1_1.row);
    for i := 0 to modul_1_1.col-1 do
      for j := 0 to modul_1_1.col-1 do
        begin
         Str(X[i*modul_1_1.col+j]:10:5,s);
         cells[j,i+1] := s;
        end;
  end;

  with Form3.StringGrid3 do begin
  ColCount:= 3; FixedCols:= 0;
  RowCount:= 11; FixedRows:= 1;

      //������� ������
    for j:= 0 to 2 do
      Cells[j,0] := '   ' + IntToStr(j+1);

    ix:=0;
    for i:=0 to 10 do begin
      for j:= 0 to 2 do begin
        Str(Y[ix]:10:5,s);
        cells[j, i+1]:= s; inc(ix);
      end;
    end;
end;
end;

end.
