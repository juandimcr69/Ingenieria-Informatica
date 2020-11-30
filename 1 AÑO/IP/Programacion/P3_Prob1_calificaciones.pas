program calificaciones;

var
nota1, nota2, nota3 : real;
notaFinal : real;

begin
   //leemos los valores
   write('La nota del examen 1 es : ');
   readln(nota1);
    write('La nota del examen 2 es : ');
   readln(nota2);
    write('La nota del examen 3 es : ');
   readln(nota3);
   
   notaFinal := (nota1 * 0.5) + (nota2 * 0.3) + (nota3 * 0.2);
   writeln('La nota es : ',notaFinal:5:2);
   if (notaFinal = 10) then writeln('Matricula')
   else if (notaFinal > 8.99) and (notaFinal < 10) then writeln('Sobresaliente')
   else if (notaFinal > 6.99) and (notaFinal < 9) then writeln('Notable')
   else if (notaFinal > 4.99) and (notaFinal < 7) then writeln('Aprobado')
   else writeln('Suspenso')

end.

