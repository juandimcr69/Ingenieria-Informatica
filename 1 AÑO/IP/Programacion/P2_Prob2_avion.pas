program avion;

(* constantes *)
var
kmRecorridos, litrosCombustible, gastosKm, precioLitro : real;
costeviaje, kmLitro, costeKm : real;

begin
(* introducimos las variables *)
write('Introduce los km recorridos:');
readln(kmRecorridos);

write('Introduce los litros de combustible gastados:');
readln(litrosCombustible);

write('Introduce los gastos fijos por km:');
readln(gastosKm);

write('Introduce el precio por litro de combustible:');
readln(precioLitro);


(* Operaciones *) 

costeviaje := (litrosCombustible * precioLitro) + (kmRecorridos * gastosKm);
kmLitro := kmRecorridos / litrosCombustible;
costeKm := costeviaje / kmRecorridos;

(* Imprimimos los resultados *)

writeln('El coste total del viaje es ', costeviaje:5:2);
writeln('Los km recorridos por litro son ', kmLitro:5:2);
writeln('El coste por kilometro es ', costeKm:5:2);

end. 
