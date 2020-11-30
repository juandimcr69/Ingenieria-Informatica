program mcd;

var 
    a, b : integer;
    u, v : integer;

Begin

    write('Introduce dos valores (>0) separados por espacios: ');
    readln(a,b);
    u := a;
    v := b;

    while (u <> v) do begin 
       if (u > v) then
          u := u -v
       else
          v := v - u
    end;

    writeln;
    writeln('El MCD de ',a,' y ',b,' es: ',u);



End.