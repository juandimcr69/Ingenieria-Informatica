program P5_MCD;

var
   
   a, b : integer;
   u, v : integer;
   

Begin 
	write(' Introduce  dos valores (>0) separados por espacios ');
	readln(a,b);
	u := a;
	v := b;
	while (u<>v) do begin
        if (u > v) then 
           u := u - v
        else 
           v := v - u;
        writeln('u ',u,' v ',v);
    end;
    writeln;
    writeln('El MCD de ',a,' y ',b,' es: ',u);
End.







