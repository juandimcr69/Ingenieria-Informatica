program P2_3_binario;
var
  b3, b2, b1, b0 : integer;
  decimal : integer;
 
begin
     
     (* Obtenemos los valores de las variables *)
     write('Introduce el valor de b3 >');
     readln(b3);
     write('Introduce el valor de b2 >');
     readln(b2);
     write('Introduce el valor de b1 >');
     readln(b1);
     write('Introduce el valor de b0 >');
     readln(b0);
     
     (* Realizamos el cálculo de los billetes *)
     decimal := (b3 * 8)+(b2 * 4)+(b1 * 2)+(b0 * 1);
     
     (* se imprime el resultado*)
     writeln('El número binario ',b3,b2,b1,b0,' en decimal es ',decimal);

end.
