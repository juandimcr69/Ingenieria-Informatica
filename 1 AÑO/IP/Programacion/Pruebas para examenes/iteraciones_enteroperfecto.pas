program enteroperfecto;

Var 
    i, p, s, pr : integer; //pr = producto, s = suma

Begin
    write('Introduce el numero que quieres calcular : ');
    readln(p);

    s := 0;
    pr := 1;

    for i := 1 to (p-1) do
      begin
          if ((p mod i) = 0)  then 
            begin
                s := s + i;
                pr := pr * i;
            end;
      end;
      writeln(s);
      writeln(pr);
      if ((s = p) and (pr = p) and (s = pr)) then writeln('El numero ',p,' es perfecto')
                else writeln('El numero ',p,' no es perfecto');



End.