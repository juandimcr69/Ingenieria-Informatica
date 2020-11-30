program e_exp_x;
Var
   x, n, i :integer;
   sum : real;
   
function factorial(n :real) : real;
var
 i, f : real;
begin
    f := 1;
    i := 0;
    while (i < n) do
    begin
       i := i+1;
       f := f * i;
    end;    
    factorial := f;
end;

function potencia(x,y :integer) : real;
var 
 i : integer;
 pot : real;
begin
  case y of
      0: potencia := 1;
      1: potencia := x;
      else
      begin
         pot := x;
         for i:= 2 to y do
             pot := pot * x;
         potencia := pot;
      end;
   end;
end;

Begin 
	write ('Introduzca el valor de x para e^x > :');
	readln(x);
	write ('Introduzca el valor de n para aproximar :');   
	readln(n);
	sum := 0;
	for i:= 0 to n do
	    sum := sum + (potencia(x,i)/factorial(i));
	writeln('e^',x,' es ',sum:10:5);
	
End.
