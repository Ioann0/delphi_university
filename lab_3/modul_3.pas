unit modul_3;

interface

Type Func = function(X: real; N: integer): real;
var x, dx, eps: real; 
    S: real; i: integer;
    n: integer;

function func_1(var x: real): real;

implementation

function func_1(var x: real): real;
begin
  func_1:= ln(1-x)
end;

begin 
  
end.