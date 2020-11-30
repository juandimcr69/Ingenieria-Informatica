program geometria;

var
Dato1, Dato2: real; //datos de entrada del círculo o del rectángulo
Resul, Resul2: real; //datos de salida


procedure arearec ( var lado1,lado2, area, perimetro : real);

begin
area := lado1*lado2;
perimetro := 2* (lado1+lado2);
end;

procedure areacir (radio : real; VAR area, diametro);
begin
area := radio*radio*3.1416;
diametro := 2*radio;
end;
begin
Writeln ('introduce la longitud de un lado ');
Readln (Dato1);
Writeln ('introduce la longitud del otro lado ');
Readln (Dato2);
Writeln ('introducce el radio del circulo');
Readln (dato2);
Resul1 := arearec (Dato1,Dato2, area, perimetro);
Resul2 := (dato2, resul1, resul2);
Writeln ('el area del rectangulo es ' , Resul1, ' el perimetro ' resul2);
Writeln ('el area del círculo es ', Resul, ' el diametro ', resul2);
end.
