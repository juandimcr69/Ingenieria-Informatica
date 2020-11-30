program cuenta;

var 
    c : char;
    numPares : integer;
    reconocidoCero : boolean;

Begin
    numPares := 0;
    reconocidoCero := false;
    write('Introduce una secuencia de 0 y 1 > : '); //no poner readln porque mete retorno de carro, sino genera conflicto con eoln

    while (not eoln) do 
     begin
           read(c);
           write(c);
            case c of
         '0' : reconocidoCero := true;
         '1' :  begin
                   if reconocidoCero then
                      numPares := numPares + 1; 
                      reconocidoCero := false;
                end;
            end;
     end;

      writeln(' El numero de pares 0-1 es ',numPares);
End.