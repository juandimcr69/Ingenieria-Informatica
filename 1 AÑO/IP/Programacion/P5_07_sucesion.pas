program sucesion;

var 
    m : integer;
    i : integer;

function a(n : integer) : integer;

begin
    case n of
      0 : a := 1;
      1 : a := 2;
      2 : a := 3;
      else 
        a := (3 * a(n-1)) - (2 * a(n-3));
    end;

end;

begin
    
    repeat 
      write('Introduzca el m >= 0 : ');
      readln(m);
    until m >= 0;

    // a(n) > m
    i := 0;
    while (a(i) <= m) do 
    begin
        i := i+1;
    end;

    writeln('a(',i,') = ',a(i),' > ',m);

end.