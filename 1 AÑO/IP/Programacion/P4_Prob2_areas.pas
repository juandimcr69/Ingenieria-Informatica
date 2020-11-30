program areas;

Type 
 Rectangulo = record
   x : real;
   y : real;
   end;

Type 
 Circulo = record
   r : real;
   d : real;
   end;

var 
miRectangulo : Rectangulo;
miCirculo : Circulo;
arearec : real;
areacir : real;
perurec : real;
pericir : real;

function exponente(f : real) : real;
begin
    exponente := f * f;
end;

begin

write('Introduce el valor de x : ');
readln(miRectangulo.x);

write('Introduce el valor de y : ');
readln(miRectangulo.y);

write('Introduce el valor del diametro : ');
readln(miCirculo.d);

//operaciones

miCirculo.r := miCirculo.d / 2;
arearec := miRectangulo.x*miRectangulo.y;
perurec := exponente(miRectangulo.x) + exponente(miRectangulo.y);
areacir := exponente(miCirculo.r) * 3.141516;
pericir := miCirculo.d * 3.141516; 

writeln('El radio del ciruclo es ',miCirculo.r:5:2);
writeln('El area del rectangulo es ',arearec:5:2);
writeln('El perimetto del rectangulo es ',perurec:5:2);
writeln('El area del ciruclo es ',areacir:5:2);
writeln('El perimetro del ciruclo es ',pericir:5:2);

end.