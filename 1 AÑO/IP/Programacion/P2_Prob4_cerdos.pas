program cerdos_ibericos;

(* constantes *)
var
contenedor1, contenedor2, contenedor3, contenedor4 : integer;
cerdos : integer;
resto : integer;


begin
(* introducimos las variables *)
write('Introduce el numero de cerdos transportados: ');
readln(cerdos);


(* Operaciones *) 

contenedor1 := cerdos div 50;
resto := cerdos mod 50; 

contenedor2 := resto div 25;
resto := resto mod 25;

contenedor3 := resto div 5;
resto := resto mod 5;

contenedor4 := resto div 1;
resto := resto mod 1;



(* Imprimimos los resultados *)

writeln(contenedor1, ' contenedores de 50 necesarios ');
writeln(contenedor2, ' contenedores de 25 necesarios ');
writeln(contenedor3, ' contenedores de 5 necesarios ');
writeln(contenedor4, ' contenedores de 1 necesarios ');

end. 
