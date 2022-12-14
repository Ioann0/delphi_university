unit modul_1_1;

interface
uses System.SysUtils;

Type TA = array of real;

var //n:= readinteger;
    fl, fr: text;
    x, z: TA; y: TA;
    main_noned: integer;
    amount: real;
    i, j, col, row, ix: byte;
    flag: boolean = False;


procedure array_input(var A: TA; mcol, mrow: integer);
{------------------------------------------------------------------------------}
procedure array_output(var A: TA);
procedure number_of_negative_elements_of_main_and_secondary_diag(A: TA; var B: TA; var noned: integer);
procedure number_of_such_elements_in_each_odd_column(var A: TA; var sum: real);
procedure changing_the_elements_of_the_main_diagonal_of_the_matrix(var A: TA);
procedure Sort1(var x: TA);
procedure MY_OUTPUT;


implementation

procedure array_input(var A: TA; mcol, mrow: integer);
var i, j: byte; FL: text;
begin
  Assign(FL, 'array.txt'); reset(FL);
  //read(fl, col, row);
  col:= mcol;
  row:= mrow;
  SetLength(A, col*row);
  for i:=0 to row-1 do begin
    for j:=0 to col-1 do
      read(fl, A[i*col+j]);
  end;
  close(fl);
end;

{------------------------------------------------------------------------------}
procedure array_output(var A: TA);
var i, j: byte;
begin
  if flag = False then begin assign(fr, 'results.txt'); rewrite(fr); write(fr, 'Original array: '); end
  else begin assign(fr, 'results.txt'); append(fr); end;
  for i:=0 to row-1 do begin
    writeln(fr, '');
    for j:=0 to col-1 do begin
      write(fr, A[i*col+j]:13:6)
    end;
  end;
  close(fr);
  flag:= True;
end;

procedure number_of_negative_elements_of_main_and_secondary_diag(A: TA; var B: TA; var noned: integer);
var i, j, ix, t: byte; FL: text;
begin
  assign(fr, 'results.txt'); append(fr);
  noned:= 0;
  SetLength(B, row*col+col);
  t:= 0;
  for i:=0 to row-1 do begin
    if A[i*(col+1)]<0 then begin
      B[noned]:= A[i*(col+1)];
      noned:= noned + 1;
      B[noned]:= t;
      noned:= noned + 1;
      B[noned]:= t;
      noned:= noned + 1;
    end;
    inc(t);
  end;
  t:=0;
  for i:=1 to row do begin
    if A[i*(col-1)]<0 then begin
      B[noned]:= A[i*(col-1)];
      noned:= noned + 1;
      B[noned]:= t;
      noned:= noned + 1;
      B[noned]:= col-i;
      noned:= noned + 1;
    end;
    inc(t);
  end;

    ix:=0;
    writeln(fr, #10#13);
    writeln(fr, 'New formed array: ');
    for i:=0 to high(y) - 20 do begin
      write(fr, y[ix]:10:4,'|':3, #32#32); inc(ix);
      write(fr, format('%.0f', [y[ix]])); inc(ix);
      writeln(fr, '');
      inc(ix);
    end;
    close(fr);
end;

procedure number_of_such_elements_in_each_odd_column(var A: TA; var sum: real);
var i, j: byte;
begin
  assign(fr, 'results.txt'); append(fr);
  writeln(fr, '');
  writeln(fr, 'Sum of such elements in each odd column: ');
  j:=0;
  while j < col do begin
    if j mod 2 <> 0 then begin
      for i:=0 to col-1 do begin
        sum:= sum + A[(i*col)+j]
      end;
      writeln(fr, 'Sum of such elements in ', j, ' each odd column: ', format('%f', [sum]));
      sum:=0;
    end;
    inc(j);
  end;
  close(fr);
end;

procedure changing_the_elements_of_the_main_diagonal_of_the_matrix(var A: TA);
var i, j: byte; p: real;
begin
  assign(fr, 'results.txt'); append(fr);
  for i:=0 to (col div 2)-1 do begin
    p:= A[i*(col+1)];
    A[i*(col+1)]:= A[(col*row-1)-i*(col+1)];
    A[(col*row-1)-i*(col+1)]:= p;
  end;
  writeln(fr, '');
  write(fr, 'changing_the_elements_of_the_main_diagonal_of_the_matrix:');
   for i:=0 to row-1 do begin
    writeln(fr, '');
    for j:=0 to col-1 do begin
      write(fr, A[i*col+j]:13:6)
    end;
  end;
  close(fr);
end;

 { --- Сортировка пузырьковым включением по возрастанию --- }
procedure Sort1(var x: TA);
Var
  i, j: integer;
  temp: real;
Begin
  assign(fr, 'results.txt'); append(fr);
  writeln(fr, #10#13);
  write(fr, 'Sorted array: ');
  for i:= 1 to (col * row) - 1 do
    begin
      temp:= x[i];
      j:= i;
      while ((j > 0) and (x[j-1] > temp)) do
        begin
          x[j] := x[j-1];
          j := j - 1;
        end;
      x[j] := temp;
    end;
    close(fr);
End;


procedure MY_OUTPUT;
var fo: text;
begin
   AssignFile(fo, 'Output.txt'); Rewrite(fo);
   Writeln(fo, 'Исходный массив:');
   //array_output(x);
   Writeln(fo, 'Результат после сортировки: ');
   //MyOutput(da2);
   //number_of_negative_elements_of_main_and_secondary_diag(x, y, main_noned);
   Writeln(fo, ' Результат после смены: ');
   //Sort1(x);
   //array_output(x);
   //array_output(x);

//  number_of_such_elements_in_each_odd_column(x, amount);
//  changing_the_elements_of_the_main_diagonal_of_the_matrix(x);
//  Sort1(x);
//  array_output(x);
   Close(fo);
end;
end.
