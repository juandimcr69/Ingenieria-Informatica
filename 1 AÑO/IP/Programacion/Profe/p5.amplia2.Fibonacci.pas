program P5_MCD;

var
   (* programa optimizado después de la finalización de la clase *)
   ultimo, penultimo, fibo : real;
   n : integer;
   i : integer;
  

Begin 
	write(' Introduce el término de la serie a calcular (>1) ');
	readln(n);
	case n of
	    1: writeln('0');
	    2: writeln('0,1');
	    else 
			write('0,1');
			ultimo := 1;
			penultimo := 0;
			for i:=3 to n do begin
			    fibo := penultimo + ultimo;
			    write(',',fibo:1:0);
			    penultimo := ultimo;
			    ultimo := fibo;
			end; (* end-for *)
     end; (* end-case *)		
End.







