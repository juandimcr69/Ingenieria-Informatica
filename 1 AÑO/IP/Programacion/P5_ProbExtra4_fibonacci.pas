program fibonacci;

var 
    ultimo, penultimo : integer;
    n : integer; //nº enesimo
    fibo, anterior : integer;
    i : integer;

Begin 
    
    write('Introduce el termino de la serie a calcular (>1) : ');
    readln(n);
    case n of
         1 : writeln('0');
         2 : writeln('0,1');
         3 : writeln('0,1,1');
    else begin 
         write('0,1,1');
         fibo := 2;
         ultimo := 1;
         anterior := 1;
         for i := 4 to n do begin
            anterior := fibo;
             fibo := fibo + ultimo;
             penultimo := ultimo;
             ultimo := anterior;
             write(',',fibo);
         end;   (* end-for *)
       end;     (* end-case *)

End;

End.