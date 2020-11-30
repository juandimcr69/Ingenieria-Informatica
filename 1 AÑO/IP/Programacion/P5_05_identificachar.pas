program contarblancos;

Var
cont : integer; { contador de blancos }
c: char; { carácter actual}

procedure evaluarChar(c : char);
begin
    case c of

    'a'..'z' : writeln (c,' Es una minuscula');
    'A'..'Z' : writeln (c,' Es una mayuscula');
    '0'..'9' : writeln (c,' Es un dígito');
    ',' , '.', ':', ';' : writeln (c,' Es un signo de puntuación');
    ' ' : writeln (c,' Es un espacio');
    else 
     writeln (c,' Carácter desconocido');
    end

end;

begin
cont := 0;
write('Introduzca un texto : ');
while not eoln do { fin de línea de la entrada de datos }

begin

read(c);
evaluarChar(c);

end;



 end.