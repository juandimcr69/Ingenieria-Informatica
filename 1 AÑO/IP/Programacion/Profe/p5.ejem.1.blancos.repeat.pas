program ContarBlancos;
Var
    cont : integer;
	{ contador de blancos }
	c: char;
	{ carácter actual}
Begin
	cont := 0;
	write ('Introduzca un texto ');
	//while not eoln do
	{ fin de línea de la entrada de datos }
	repeat
		read(c);
		if c = ' ' then cont := cont + 1;
	until eoln;
	write ('El número de blancos es: ', cont );
End.
