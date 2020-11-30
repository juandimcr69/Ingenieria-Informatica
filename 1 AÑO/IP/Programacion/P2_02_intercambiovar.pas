program P2_01_Intercambio;
(* const *)

var
      a, b, c, aux : char;
begin
(* Solicitamos las variables *)
write('Introduce el valor de a : ');
readln(a);
write('Introduce el valor de b : ');
readln(b);
write('Introduce el valor de c : ');
readln(c);

(* Cambiamos las variables *)
aux := b;
b := a;
a := c;
c := aux;

(* imprimimos los resultados *)
writeln('La variable a tiene el valor de : ',a);
writeln('La variable b tiene el valor de : ',b);
writeln('La variable c tiene el valor de : ',c);


end.
