program P5_media;

var
   n, califica :integer;
   media, suma: real;

function leeEntrada() : integer;
var
   n : integer;
   correcto : boolean;
begin
   n := 0;
   correcto := false;
   while (not correcto) do begin
         write ('Introduzca una calificación [1-10] 0 para salir > :');
		 readln(n);
		 if (n < 0) or (n >10) then
			writeln('Error en el valor de entrada')
		 else
		    correcto := true;
   end;
   leeEntrada := n;
end;

Begin 
    n := 0;
    califica := 0;
    media := 0;
    suma := 0;
	repeat
		 califica := leeEntrada();
		 if (califica > 0) then begin
			suma := suma + califica;
			n := n+1;
		 end;
    until (califica=0);
    if (n > 0) then begin
		media := suma / n;
		writeln ('La calificación media es > :',media:5:2);
    end;
End.







