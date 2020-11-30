program prueba;

Var 
    j, i : integer;
    multi : real;

Function multiplicar (n, k : integer) : real;
begin
    multiplicar := n * k;
end;

Begin
    write('Introduce 2 numeros : ');
    readln(j, i);

    multi := multiplicar(j,i);
    writeln('La multiplicacion es ',multi:6:2);
    writeln('La multiplicacion es ',multiplicar(j,i):6:2); //si se pone asi te ahorras una linea de codigo

End.