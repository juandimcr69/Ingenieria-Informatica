program contarblancos;

Var
cont : integer; { contador de blancos }
c: char; { carácter actual}

begin

cont := 0;

write('Introduzca un texto');

repeat

begin

read(c);
if c = ' ' then cont := cont + 1;

end;

write ('El número de blancos es: ', cont );

 end.