program maximo;
 var
 n1,n2 : integer;
 
 begin
 //leemos los datos
 write('Introduce el valor de n1 : ');
 readln(n1);
 write('Introduce el valor de n2 : ');
 readln(n2);
 //extrucutra selectiva
 if (n1 > n2) then writeln('El maximo es ',n1)
 else writeln('El maximo es ' ,n2);
 end.
