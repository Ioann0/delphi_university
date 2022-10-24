﻿unit modul_lab_4_1;

interface


Type TSH = array[1..6] of string[117];
Type    PSTRC = ^TZ;
        TZ = record
          name: string[11];            {Название}
          prod: string[21];            {Производитель}
          year_of_comm: integer;       {Год ввода в строй}
          max_range: word;             {Максимальная дальность}
          num_of_pass_seats: word;     {Количество пассажирских мест}
          PTR: PSTRC;
        end;
      ttz = array of TZ;
      s25 = string[25];
Const SH: TSH = ('                                                   Самолеты                                     ',
'================================================================================================================+',
'|   Название   |    Производитель    | Год ввода в строй | Максимальная дальность | Количество пассажирских мест|',
'================================================================================================================+',
'-------------------------------------------------------------------------------------------------------',
'================================================================================================================+');
Var FR, fl: text;
    i:byte;
    A, Z: TZ;
    S: PSTRC;
    boo: boolean;
    txt: string;
    f_name: string;
    col_zap: integer;
    MZ: ttz;
    S1, S2 : integer;
    ar_res : array of integer;
    M: integer;
    

{------------------------вывод данных одной записи-----------------------------}
procedure P(M: TZ);
{-------------------------Проверка пустоты списка------------------------------}
function PP(S: PSTRC): boolean;
{------------------------дополнение списка одной новой записью-----------------}
procedure DOP(var S: PSTRC; dat: TZ);
{---------------------------вывод данных списка--------------------------------}
procedure PRINT_ALL(S: PSTRC);
procedure VVOD();
{-----------------------поиск в списке по уникальному значению ключа-------------}
Procedure POISK1(S: PSTRC);
{----------------------поиск по неуникальному признаку-------------------------}
procedure POISK2(s: PSTRC);
{----------------------удаление из списка записи с заданным ключом-------------}
procedure UD(var s: PSTRC);
function FILTR(st: s25 ): s25;
procedure PSH;
procedure vivod();
Procedure SwapStr;
Procedure InsertStr(i : integer);
procedure my_P(i: integer);
procedure Sort1(var MZ: ttz; M: byte);
{===================== Сортировка методом простого слияния ====================}
procedure method_sliyania(var MZ: ttz; M: byte);

implementation

{------------------------вывод данных одной записи-----------------------------}


procedure PSH;
var i: byte;
begin
  for i:= 1 to 4 do
    writeln(fr, SH[i]);
end;

procedure my_P(i: integer);
begin
  with MZ[i] do
    writeln(FR, name:15,'|' , prod:20,'|', year_of_comm:11,'|':9, max_range:14,'|':11, num_of_pass_seats:17,'|':13);
end;

procedure P(M: TZ);
begin
  with M do
    writeln(FR, name:15,'|' , prod:20,'|', year_of_comm:11,'|':9, max_range:14,'|':11, num_of_pass_seats:17,'|':13);
end;

{-------------------------Проверка пустоты списка------------------------------}
function PP(S: PSTRC): boolean;
begin
  if s = nil then begin
    writeln('СПИСОК ПУСТ!');
    PP:= TRUE;
  end else PP:= FALSE;
end;

{------------------------дополнение списка одной новой записью-----------------}
procedure DOP(var S: PSTRC; dat: TZ);
var nov, cur, pr: PSTRC; key: integer;
begin
  cur:= S; pr:= nil; key:= dat.year_of_comm; //writeln(' key = ', key);
  new(nov); nov^:= dat;
  while (cur <> nil) and (cur^.year_of_comm < key) do begin
    pr:= cur; cur:= cur^.PTR; // движение вдоль списка
  end;
  nov^.PTR:= cur; // подключение нового элемента справа
  if pr = nil then s:= nov //в начало списка
              else pr^.PTR:= nov; // в середину списка
end;

{---------------------------вывод данных списка--------------------------------}
procedure PRINT_ALL(S: PSTRC);
var cur: PSTRC;
begin
  writeln('--Чтение списка--'); cur:= s;
  if PP(s) then exit; //проверка пустоты списка
  while cur <> nil do begin
    P(cur^); cur:= cur^.PTR; //вывод и движение вдоль списка
  end;
end;

procedure VVOD();
var M: TZ;
    b: char; //пробел
begin
  SetLength(MZ, col_zap);
  assign(fr, 'airplanes.txt'); reset(fr);
  for i := 0 to col_zap - 1 do
    with MZ[i] do begin
      readln(fr, name, prod, year_of_comm, max_range, num_of_pass_seats);
      name:=FILTR(name);
      prod:=FILTR(prod);
      //P(M);
      //DOP(s, M);
    end;
      close(fr);
end;

{-----------------------поиск в списке по уникальному значению ключа-------------}
Procedure POISK1(S: PSTRC);
Var
  i: integer;
  cur: PSTRC;
  fl: text;
  t_name: string;
  label MF;
Begin
  assign(fl, 'unique.txt'); reset(fl);
  writeln(#10);
  if PP(S) then exit;
  
  while not eof(fl) do begin
  readln(fl, t_name);
  t_name:= FILTR(t_name);
  writeln('Поиск по названию самолета: ', t_name);
  if t_name='' then begin 
     writeln('Нет данных для поиска'); goto MF; 
  end;
  cur:= s;
  while (cur <> nil) and (FILTR(cur^.name) <> t_name) do
    cur := cur^.PTR;
  if cur = nil then Writeln('Нет такого названия')
               else P(cur^);
  MF: Writeln('Поиск завершен'); Writeln;
  end;
  close(fl);
End;

{----------------------поиск по неуникальному признаку-------------------------}
procedure POISK2(s: PSTRC);
var t_num_of_pass_seats: integer;
    t_prod: string[18];
    i, R: integer;
    pr: boolean;
    cur: PSTRC;
    flag: boolean;
label MF;
begin
  assign(fl, 'not_unique.txt'); reset(fl);
  if PP(s) then exit;
  while not eof(fl) do begin
    writeln;
    flag:= true;
    readln(fl, t_prod, t_num_of_pass_seats);
    t_prod:= FILTR(t_prod);
    writeln(t_prod,#32 ,t_num_of_pass_seats);
    
    if (t_num_of_pass_seats=0) and (t_prod='') then begin
      writeln('Нет данных для поиска.', #10); goto MF;
    end;
    cur:= s;
    t_prod:= FILTR(t_prod);
    while (cur <> nil) do begin 
      if ((t_prod = '') or (t_prod = cur^.prod)) and
            ((t_num_of_pass_seats = 0) or (cur^.num_of_pass_seats <= t_num_of_pass_seats)) then begin 
            P(cur^); cur:= cur^.PTR;
            flag:= false;
            end
            else begin cur:= cur^.PTR; end; end;
    if flag = true then Writeln('Нет такого названия или такого кол-ва мест');
  MF: Writeln('Поиск завершен');
  end;
  close(fl);
end;

{----------------------удаление из списка записи с заданным ключом-------------}
procedure UD(var s: PSTRC);
var cur, pr: PSTRC; t_name: string; 
label MF;
begin
  if PP(s) then exit;
  assign(fl, 'delete.txt'); reset(fl);
  while not eof(fl) do begin
    readln(fl, t_name);
    t_name:= FILTR(t_name);
    if t_name='' then begin 
    writeln('Нет данных для удаления'); goto MF; end;
    
    writeln('Удаление самолета: ', t_name);
    cur:= s; pr:= nil;
    while (cur <> nil) and (cur^.name <> t_name) do begin
      pr:= cur; cur:= cur^.PTR; // вдоль списка
    end;
    if cur = nil then begin writeln('Удаление не успешно!'); exit end;
    P(cur^); 
    if pr = nil then S:= cur^.PTR
                else pr^.PTR:= cur^.PTR;     
    dispose(cur);
    end;
  close(fl); MF: writeln('Удаление завершенно!', #10);
end;

procedure vivod ();
Var
  i : integer; cur: PSTRC;
Begin
  PSH;
  for i := 0 to col_zap - 1 do begin
    my_P(i);
    //InsertStr(i);
  end;
End;

function FILTR(st: s25 ): s25;
Var i,j,l : integer;
begin
  l:= length(st);
  for i:= 1 to l do
    if st[i] <> ' ' then
      for j:= l downto i do
        if st[j] <> ' ' then begin
          FILTR:= copy(st, i, j-i+1);
          exit; end;
  FILTR := '' ;
end;

Procedure SwapStr;
var
  i : integer;
begin
  Z := MZ[S1 - 1];
  MZ[S1-1]:= MZ[S2-1];
  MZ[S2-1]:= Z;
end;

Procedure InsertStr(i : integer);
begin
  SetLength(ar_res, Length(ar_res) + 1);
  ar_res[Length(ar_res) - 1]:= i;
end;

procedure Sort1(var MZ: ttz; M: byte);
var i,j,P: byte;
    AX: string[13];
begin
 for i:= M-2 downto 0 do begin // номера упорядочиваемых элементов
  P:=1;
    for j:= 0 to i do begin // поиск максимума среди неупорядоченных
      if MZ[j].name < MZ[P].name then P:=j; end;
  AX:= FILTR(MZ[j].name); MZ[j].name:= FILTR(MZ[P].name); MZ[P].name:= AX //Смена строк местами
 end;
end;


{===================== Сортировка методом простого слияния ====================}
procedure method_sliyania(var MZ: ttz; M: byte);
var i,j,k: byte;
    B,C: ttz;
    M2: integer;
Label Met;
begin
  M2:= (col_zap div 2); // Подготовка массивов для дальнейшего упорядочивания
  //i:= 0;
  setlength(B, M2);
  setlength(C, M2);

  for i:=0 to M2-1 do B[i].name:= MZ[i].name;
  Sort1(B,M2); //Первая половина массива А
  for i:= M2 to M - 1 do C[i-M2].name:= MZ[i].name; Sort1(C,M2); //Вторая половина массива А
  i:=0; j:=0; k:=0; //начальные значения массивов B, C, A
  Met: if B[i].name>C[j].name then begin
    MZ[k].name:= B[i].name; i:=i+1; k:=k+1; // пересылка в массив А из В
    if i <=M2 then goto Met;
    for j:=j to M2-1 do begin // пересылка остатков из массива С
      MZ[k].name:= C[j].name; k:=k+1;
     end;
  exit; end //сортировка закончена
      else begin
        MZ[k].name:= C[j].name; j:=j+1; k:=k+1; // пересылка в массив А из C
        if j <=M-M2-1 then goto Met;
        for i:=i to M-M2-1 do begin // пересылка остатков из массива B
          MZ[k].name:= B[i].name; k:=k+1;
         end;
  exit; end; //сортировка закончена
end;
begin
  //
end.