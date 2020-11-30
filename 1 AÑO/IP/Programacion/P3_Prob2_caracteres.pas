program caracteres;

var

letra : char;
digito, digitosuma : integer;

begin
   //introducimos los valores
   write('Introduce los caracteres : ');
   readln(letra, digito);
   
   digitosuma := digito + 1;
   if (digito = 9) then
   begin
   digitosuma := 0
   end;
   
   writeln('El ',digito,' ', 'se convierte en ',digitosuma);

end.
