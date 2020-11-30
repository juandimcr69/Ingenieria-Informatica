program serie_A;

{ En este programa el límite es una constante incorporada en el programa. }
{ También podría ser un valor cualquiera leído de la entrada. }

const
  limite = 20.0;

Var
  suma : real; { valor de la suma de términos en un momento determinado }
  cuenta : integer; { cuenta el número de términos y lo utilizamos de divisor }
Begin
     cuenta := 0;
     suma := 0;
while (suma < limite) do
begin 
  cuenta:=cuenta+1;
  suma:=suma + 1/cuenta;
end;

writeln ('El número de términos es ', cuenta,' con una suma de ',suma:5:2);

End.
