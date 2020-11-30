program P4_3_billetes;
var
   dinero, billetes : Integer;

procedure divide (dividendo, divisor : Integer;var cociente, resto : Integer);
begin
     cociente := dividendo div divisor; 
     resto := dividendo mod divisor;
end;


begin
    Write('Introduce el valor a cambiar ');
    readln(dinero);
    divide(dinero,500,billetes,dinero);
    writeln(billetes,' billetes de 500€');
    divide(dinero,100,billetes,dinero);
    writeln(billetes,' billetes de 100€');
    divide(dinero,50,billetes,dinero);
    writeln(billetes,' billetes de 50€');
    divide(dinero,20,billetes,dinero);
    writeln(billetes,' billetes de 20€');
    divide(dinero,10,billetes,dinero);
    writeln(billetes,' billetes de 10€');
    divide(dinero,5,billetes,dinero);
    writeln(billetes,' billetes de 5€');
    writeln(dinero,' en monedas');
    
end.
