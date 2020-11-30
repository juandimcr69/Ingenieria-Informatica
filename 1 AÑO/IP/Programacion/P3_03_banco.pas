program banco;

var
cantidad, meses, interes : real;
riesgo : char;
mensualidad : real;

begin
//leemos los valores
write('Introduce la cantidad : ');
readln(cantidad);

write('Introduce la duracion en meses : ');
readln(meses);

write('Introduce el interes : ');
readln(interes);

write('¿El cliente es de riesgo? s/n : ');
readln(riesgo);

if (meses > 0) and (meses < 25) then
   begin
       if (riesgo = 's') or (riesgo = 'S') then
       mensualidad := ((cantidad + (cantidad * interes * meses / 100)) * 1.01) / meses
       else 
              mensualidad := (cantidad + (cantidad * interes * meses / 100)) / meses;
              writeln('El importe mensual es de ',mensualidad:6:2,'€');
    end
              else
              writeln('El valor para los meses no es correcto');
 
end.
