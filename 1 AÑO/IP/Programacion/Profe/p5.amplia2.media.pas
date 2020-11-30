program P5_media;

var
   n, califica :integer;
   media, suma: real;


Begin 
    n := 0;
    califica := 0;
    media := 0;
    suma := 0;
	write ('Introduzca una calificación [1-10] 0 para salir > :');
	readln(califica);
    while (califica <> 0) do
    begin
         suma := suma + califica;
         n := n+1;
         write ('Introduzca una calificación [1-10] 0 para salir > :');
		 readln(califica);
    end;
    if (n > 0) then begin
		media := suma / n;
		writeln ('La calificación media es > :',media:5:2);
    end;
End.







