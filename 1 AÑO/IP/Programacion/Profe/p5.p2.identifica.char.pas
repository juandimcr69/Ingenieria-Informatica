program ContarBlancos;
Var

	{ contador de blancos }
	c: char;
	{ carácter actual}
procedure evaluarChar(c : char);
begin
	case c of
	'a'..'z': Writeln (c,' Es una minuscula');
	'A'..'Z': Writeln (c, ' Es una mayúscula');
	'0'..'9': Writeln (c, ' Es un dígito');
	',' , '.' , ':' , ';' : Writeln (c,' Es un signo de puntuación');
	' ': Writeln (c, ' Es un espacio')
	else
		Writeln (c,' Carácter desconocido');
	end
end;

Begin
	cont := 0;
	write ('Introduzca un texto >');
	while not eoln do
	{ fin de línea de la entrada de datos }
	begin
		read(c);
		evaluarChar(c);
	end;
	
End.
