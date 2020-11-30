program P3_02_Prestamo;

var
    cantidad, meses, interes : Real;
    riesgo : char;
    mensualidad : Real;
    
begin
   //leeemos los datos
   write('Introduce la cantidad a solicitar : ');
   readln(cantidad);
   write('Introduce la duración en meses : ');
   readln(meses);
   write('Introduce la el interés : ');
   readln(interes);
   write('Es cliente de riesgo (s/n): ');
   readln(riesgo);


   if (meses > 0) and (meses < 25) then
       begin
            if (riesgo = 's') or (riesgo='S') then 
                mensualidad := ((cantidad + (cantidad * interes * meses / 100)) * 1.01) / meses
            else
                mensualidad := (cantidad + (cantidad * interes * meses / 100)) / meses;
            writeln('El importe mensual es de  ',mensualidad:6:2,'€');    
       end
   else
       writeln('El valor para los meses no es correcto');    
   
end.
