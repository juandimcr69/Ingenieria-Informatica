program division;

var 
    dividendo, divisor, cociente, resto : integer;

begin 

    cociente := 0;
    resto := 0;

    write ('Introduzca el dividendo y divisor : ');
    readln(dividendo, divisor);

    //Operaciones
    resto := dividendo;
    repeat
    
        resto := resto - divisor;
        cociente := cociente + 1;
    until (resto < divisor);

    writeln(dividendo,' = ',(divisor * cociente) + resto);
    writeln('cociente = ',cociente,', resto = ',resto);




end.