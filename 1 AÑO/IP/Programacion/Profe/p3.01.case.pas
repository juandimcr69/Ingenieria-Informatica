program P3_01_Intercambio;

var
    nota : integer;
    
begin
   //leeemos los datos
   write('Introduce el valor de la calificación : ');
   readln(nota);
   
   case nota of
       20: writeln('M. de honor');
       18,19: writeln('Sobresaliente');
       16,17: writeln('Notable');
       14,15: writeln('Aprobado');
       else
           writeln('Suspenso');
   end;
   
   if (nota = 20) then writeln('M. de honor')
   else if (nota > 17) then writeln('Sobresaliente')
   else if (nota > 15) then writeln('Notable')
   else if (nota > 13) then writeln('Aprobado')
   else writeln('Suspenso');
   
end.
