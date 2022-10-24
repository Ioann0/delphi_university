unit module;
interface
Type TR = array of Real;
     Tp = array of integer;
var //n:= readinteger;
    z: TR;
    n: integer;
     
procedure my_sort(var A: TR; N: integer);
procedure my_array_output(var A: TR; n: integer);

implementation 

procedure my_sort(var A: TR; N: integer);
var
  i,j : byte;
  B : Tp;
  C : TR;
begin
  setlength(B, N);
  setlength(C, N);
// определение номеров мест элементов
  for i := 0 to N-1 do
    B[i]:=0;
  for i := (N-1) downto 1 do
    for j := i-1 downto 0 do
      if A[i] >= A[j] then
        B[j]:=B[j]+1
      else
        B[i]:=B[i]+1;
  // Расстановка элементов массива в новый массив
  for i := 0 to N-1 do C[B[i]]:=A[i];
  // Возврат массива в исходный массив
  for i := 0 to N-1 do A[i]:= C[i];
End;


procedure my_array_output(var A: TR; n: integer);
var i, j: byte;
begin
  for i:=0 to n-1 do begin
    writeln;
    for j:=0 to n-1 do begin
      write(A[i*n+j]:13:6)
    end;
  end;
end;
end.