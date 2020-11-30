program P4_2_acciones;
var
    b1, b2, decimal1, decimal2: Integer;
    x, y, z: Char;

procedure BinDec ( b4, b3 , b2, b1 : Integer; var dec : Integer );
begin
 dec := b1*1 + b2*2 + b3*4 + b4*8
end;

procedure Intercambio ( var a, b: Char );
var
    aux:Char;
begin
   aux := a;
   a := b;
   b := aux
end;

procedure IntercambioN ( a, b: Char );
var
    aux:Char;
begin
   aux := a;
   a := b;
   b := aux
end;

procedure Potencia( x,y: integer; var resultado: integer);
begin
   resultado := x * y;
end;

begin
    b1 := 0;
    b2 := 1;
    x := 'O';
    y := 'P';
    z := 'Q';
    WriteLn ('El valor de las variables x, y, z antes intercambio es: ', x, y, z);
    IntercambioN (x, y);
    WriteLn ('El valor de las variables x, y, z intercambio 1 es: ', x, y, z);
    Intercambio (y, z);
    WriteLn ('El valor de las variables x, y, z intercambio 2 es: ', x, y, z);
    BinDec (b1, b2, b1, b2, decimal1);
    BinDec (0, 1, b1, b1, decimal2);
    WriteLn ('El valor de las variables x, y, z es: ', x, y, z);
    WriteLn ('El valor del numero 1 es : ', decimal1);
    WriteLn ('El valor del numero 2 es : ', decimal2);
end.
