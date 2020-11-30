program binario;

(* constantes *)
var
b4, b3, b2, b1, b0 : integer;
decimal : integer;

begin
(* introducimos las variables *)
write('Introduce el numero binario de 4 bits:');
readln(b4, b3, b2, b1, b0);

(* Operaciones *) 

decimal := (b4 * 16) + (b3 * 8) + (b2 * 4) + (b1 * 2) + b0; 

(* Imprimimos los resultados *)

writeln(' El numero binario ' ,b4,b3,b2,b1,b0, ' en decimal es ' ,decimal);

end. 
