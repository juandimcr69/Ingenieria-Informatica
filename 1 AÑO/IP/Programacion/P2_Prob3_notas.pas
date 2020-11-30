program avion;

(* constantes *)
var
Examen, Casa, Test : real;
notaFinal : real;


begin
(* introducimos las variables *)
write('Introduce la nota del examen: ');
readln(Examen);

write('Introduce la nota del trabajo en casa: ');
readln(Casa);

write('Introduce la nota del test: ');
readln(Test);


(* Operaciones *) 

notaFinal := (Examen * 0.5) + (Casa * 0.3) + (Test * 0.2);

(* Imprimimos los resultados *)

writeln('La nota final es: ', notaFinal:5:2);


end. 
