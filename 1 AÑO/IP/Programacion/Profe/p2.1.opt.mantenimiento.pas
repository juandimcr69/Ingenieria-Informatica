program P2_1_opt_mantenimiento;
const
  PRECIOL = 1.835;
var
  kmRecorridos, litrosCombustible, gastosKm : real;
  costeTotal, costeKm, kmLitro : real;
 
begin
     
     (* Obtenemos los valores de las variables *)
     write('Introduce los km recorridos >');
     readln(kmRecorridos);
     write('Introduce los litros de combustible consumidos >');
     readln(litrosCombustible);
     write('Introduce los gastos fijos por km >');
     readln(gastosKm);
     
     (* Realizamos el cálculo de los costes *)
     costeTotal := (litrosCombustible * PRECIOL) + (kmRecorridos * gastosKm);
     costeKM := costeTotal / kmRecorridos;
     kmLitro := kmRecorridos / litrosCombustible;
     
     (* se imprime el resultado*)
     writeln('El coste total del viaje es ',costeTotal:6:2);
     writeln('El coste por km del viaje es ',costeKm:6:2);
     writeln('Los km recorridos por litro son ',kmLitro:6:2);

end.
