program P2_1_Intercambio;
var
   a, b, c : char;
   aux : char;
begin
     aux := ' ';
     (* Obtenemos los valores de las variables *)
     write('Introduce el valor de a: ');
     readln(a);
     write('Introduce el valor de b: ');
     readln(b);
     write('Introduce el valor de c: ');
     readln(c);
     
     (* Realizamos el intercambio de valores *)
     writeln('e1 valores de a,b,c >',a,' ',b,' ',c,' ',aux);
     aux := b;
     writeln('e2 valores de a,b,c >',a,' ',b,' ',c,' ',aux);
     b := a;
     writeln('e3 valores de a,b,c >',a,' ',b,' ',c,' ',aux);
     a := c;
     writeln('e4 valores de a,b,c >',a,' ',b,' ',c,' ',aux);
     c := aux;
     
     
     (* se imprime el resultado*)
     writeln('El contenido de la variable a es: ',a);
     writeln('El contenido de la variable b es: ',b);
     writeln('El contenido de la variable c es: ',c);
end.
