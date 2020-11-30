program serie;
Var
   m:integer;
   i: integer;
   a0, a1, a2, an :integer;
   
function a(n: integer): integer;
begin
    case n of
         0: a:= 1;
         1: a:= 2;
         2: a:= 3;
         else
            a:= (3*a(n-1)) - (2*a(n-3));
     end;
end;

Begin 
	
	repeat
	   write ('Introduzca el m [>= 0] :');
	   readln(m);
	until m>= 0;
	// a(n) > m
	i := 0;
	while (a(i) <= m) do
	begin
	   i:= i+1;
	end;
	writeln('a(',i,') = ',a(i),' > ',m);
	a0 := 1;
	a1 := 2;
	a2 := 3;
	an := 0;
	i := 0;
	repeat
	     if (i > 3) then
	     begin
	          a0 := a1;
	          a1 := a2;
	          a2 := an;
	     end;
		 case i of
			0: an:= 1;
			1: an:= 2;
			2: an:= 3;
         else
            an:= (3*a2) - (2*a0);
		 end;
		 writeln('a(',i,') = ',an,' > ',m);
	     i := i+1;
	until (an > m);
	
End.
