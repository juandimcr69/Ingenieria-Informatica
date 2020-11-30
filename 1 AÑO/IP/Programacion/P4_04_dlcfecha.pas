program P4_01_Fecha;
type
    Fecha = record
        dd, mm, aa : Integer;
    end;
var
    fecha1, fecha2: Fecha;
    
    
begin
   //leeemos los datos
   write('Introduce la fecha : ');
   readln(fecha1.dd,fecha1.mm,fecha1.aa);
   fecha2.dd := fecha1.dd + 1;
   fecha2.mm := fecha1.mm;
   fecha2.aa := fecha1.aa;
   if (fecha1.dd = 31) then begin
           fecha2.dd := 1;
           fecha2.mm := fecha1.mm + 1;
           //controlamos si es diciembre
           if (fecha1.mm=12) then begin
                    fecha2.mm := 1;
                    fecha2.aa := fecha1.aa + 1;
           end
    end
   //controlamos los meses de 30 días
   else if (fecha1.dd = 30) and ((fecha1.mm=4) or (fecha1.mm=6) or (fecha1.mm=9) or (fecha1.mm=11)) then begin
           fecha2.dd := 1;
           fecha2.mm := fecha1.mm + 1;
   end 
   //controlamos febrero
   else if ((fecha1.dd = 28) and (fecha1.mm=2)) then begin
           //si es bisiesto no salto de mes
           if ((fecha1.aa mod 4) = 0 ) then
              fecha2.dd := fecha1.dd + 1
           else begin
                 fecha2.dd := 1;
                 fecha2.mm := fecha1.mm+1;
           end
   end
   else if (fecha1.dd = 29) and (fecha1.mm=2) then begin
            fecha2.dd := 1;
            fecha2.mm:= 3;
   end;
   writeln('El siguiente día es ',fecha2.dd,' ',fecha2.mm,' ',fecha2.aa);
end.
