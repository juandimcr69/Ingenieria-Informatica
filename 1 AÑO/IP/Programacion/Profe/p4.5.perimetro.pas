program P4_5_perimetro;

type 
     Punto = record
         x : real;
         y : real;
     end;
     
     Triangulo = record
         v1 : Punto;
         v2 : Punto;
         v3 : Punto;
     end;
var
    t : Triangulo;
    perimetro : real;
    
function leerPunto() : Punto;
    var
       p : Punto;
    begin    
        write('Introduzca la componente x ');
        readln(p.x);
        write('Introduzca la componente y ');
        readln(p.y);
        leerPunto := p;
    end;
    
procedure leerTriangulo(var data : Triangulo);
    begin
          data.v1 := leerPunto();
          data.v2 := leerPunto();
          data.v3 := leerPunto();
    end;

function sqr(d : real) : real;
    begin
        sqr := d * d;
    end;
    
function calcularDistancia(p1, p2 :Punto) : real;
    begin
        calcularDistancia := sqrt( sqr(p1.x - p2.x) + sqr(p1.y - p2.y));
    end;
    

begin
    leerTriangulo(t); 
    perimetro := calcularDistancia(t.v1,t.v2) + calcularDistancia(t.v2,t.v3) + calcularDistancia(t.v3,t.v1);
    writeln('El perímetro del triángulo es ',perimetro:6:2);
end.
