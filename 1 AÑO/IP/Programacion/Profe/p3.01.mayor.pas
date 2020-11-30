program P3_01_Intercambio;

var
    n1,n2 : integer;
    
begin
   //leeemos los datos
   write('Introduce el valor de n1 : ');
   readln(n1);
   write('Introduce el valor de n2 : ');
   readln(n2);
   //extructura selectiva
   if (n1 > n2) then
       writeln('El máximo es ',n1)
   else
       writeln('El máximo es ',n2);
    
   
end.
