program P4_5_perimetro;

type 
     Polinomio = record
         a : real;
         b : real;
         c : real;
     end;
     
var
    p : polinomio;
    r : real;
    s1, s2 : real;

      
function sqr(d : real) : real;
    begin
        sqr := d * d;
    end;
    
function leerPolinomio() : Polinomio;
    var
        data : Polinomio;
    begin
        write('Introduzca el coeficiente a de X² ');
        readln(data.a);
        write('Introduzca el coeficiente b de X  ');
        readln(data.b);
        write('Introduzca el término independiente c ');
        readln(data.c);
        leerPolinomio := data;
    end;
    
function calcularRadicando(data : Polinomio) : real;
    begin
        calcularRadicando := sqr(data.b) - (4*data.a*data.c);
    end;
    
procedure solDobleReal(data : Polinomio; var s1, s2 : real);
    begin
        s1 := (-data.b + sqrt(calcularRadicando(data))) / (2 * data.a);
        s2 := (-data.b - sqrt(calcularRadicando(data))) / (2 * data.a);
    end;
    
procedure solDobleCompleja(data : Polinomio; var s1, s2 : real);
    begin
        s1 := (-data.b) / (2 * data.a);
        s2 := (sqrt((4*data.a*data.c) - sqr(data.b)))/ (2 * data.a);
    end;

function solReal(data : Polinomio): real;
   begin
       solReal := -data.b / (2*data.a);
   end;        
begin
    p := leerPolinomio();
    r := calcularRadicando(p);
    
    if (r = 0) then
        begin
            //solución única
            s1 := solReal(p);
            writeln('La solución es única ',s1:5:3);
        end
    else if ( r > 0) then
        begin
            solDobleReal(p,s1,s2);
            writeln('La solución Real 1 es ',s1:5:3);
            writeln('La solución Real 1 es ',s2:5:3);
        end
    else
        begin
           solDobleCompleja(p,s1,s2);
           writeln('La solución Compleja 1 es ',s1:5:3,'+',s2:5:3,'i');
           writeln('La solución Compleja 2 es ',s1:5:3,'-',s2:5:3,'i');
        end;
    
end.
