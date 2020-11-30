program P2_2_billetes;
var
  cantidad : integer;
  resto : integer;
  quinientos, cien, cincuenta, veinte, diez, cinco : integer;
begin
     
     (* Obtenemos los valores de las variables *)
     write('Introduce el importe para determinar los billetes: ');
     readln(cantidad);
     
     (* Realizamos el cálculo de los billetes *)
     quinientos := cantidad div 500;
     resto := cantidad mod 500;
        
     cien := resto div 100;
     resto := resto mod 100;

     cincuenta := resto div 50;
     resto := resto mod 50;

     veinte := resto div 20;
     resto := resto mod 20;
     
     diez := resto div 10;
     resto := resto mod 10;
     
     cinco := resto div 5;
     resto := resto mod 5;

     (* se imprime el resultado*)
     writeln('La cantidad ', cantidad,'€ en billetes es');
     writeln(quinientos,' billetes de 500€');
     writeln(cien,' billetes de 100€');
     writeln(cincuenta,' billetes de 50€');
     writeln(veinte,' billetes de 20€');
     writeln(diez,' billetes de 10€');
     writeln(cinco,' billetes de 5€');
     writeln(resto,'€ en monedas');
end.
