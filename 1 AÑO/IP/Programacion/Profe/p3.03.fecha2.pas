program P3_02_Prestamo;

var
    dd, mm, aa : Integer;
    dd2, mm2, aa2 : Integer;
    
begin
   //leeemos los datos
   write('Introduce la fecha : ');
   readln(dd,mm,aa);
   dd2 := dd + 1;
   mm2 := mm;
   aa2 := aa;
   if (dd = 31) then begin
           dd2 := 1;
           mm2 := mm + 1;
           //controlamos si es diciembre
           if (mm=12) then begin
                    mm2 := 1;
                    aa2 := aa + 1;
           end
    end
   //controlamos los meses de 30 días
   else if (dd = 30) and ((mm=4) or (mm=6) or (mm=9) or (mm=11)) then begin
           dd2 := 1;
           mm2 := mm + 1;
   end 
   //controlamos febrero
   else if ((dd = 28) and (mm=2)) then begin
           //si es bisiesto no salto de mes
           if ((aa mod 4) = 0 ) then
              dd2 := dd + 1
           else begin
                 dd2 := 1;
                 mm2 := mm+1;
           end
   end
   else if (dd = 29) and (mm=2) then begin
            dd2 := 1;
            mm2:= 3;
   end;
   writeln('El siguiente día es ',dd2,' ',mm2,' ',aa2);
end.
