program P4_0_record;
type
  Punto = record
        x, y : integer;
  end;
  
  Triangulo = record
       v1, v2, v3 : Punto;
  end;
  
  NIF = record
      dni : real;
      letra : char;
  end;
  
  DatosPersonales = record
     id1, id2 : integer;
     id3 : NIF;
  end;
   Alumno = record
       persona : DatosPersonales;
   end;
var
    miAlumno : Alumno;
    miTriangulo: Triangulo;
    
       
begin
    miAlumno.persona.id3.dni := 33445566;
    
    write('Introduce los valores (x,y) del vértice v1 ');
    readln(miTriangulo.v1.x, miTriangulo.v1.y);
    write('Introduce los valores (x,y) del vértice v2 ');
    readln(miTriangulo.v2.x, miTriangulo.v2.y);
    write('Introduce los valores (x,y) del vértice v3 ');
    readln(miTriangulo.v3.x, miTriangulo.v3.y);
    
    writeln('Hola el triangulo se ha definido en V1 (',miTriangulo.v1.x,',',miTriangulo.v1.y,')');
    writeln('Hola el triangulo se ha definido en V2 (',miTriangulo.v2.x,',',miTriangulo.v2.y,')');
    writeln('Hola el triangulo se ha definido en V3 (',miTriangulo.v3.x,',',miTriangulo.v3.y,')');
end.
