program division;
Var
    dividendo, divisor, cociente, resto :integer;
Begin
	cociente := 0;
	resto := 0;
	write ('Introduzca el dividendo y divisor >');
	readln(dividendo, divisor);
	resto := dividendo;
	while (resto >= divisor) do
	begin
		resto := resto - divisor;
		cociente := cociente + 1;
	end;
	writeln(dividendo,' = ',(divisor * cociente)+resto);
	writeln('cociente =',cociente,' resto =',resto);
	
End.
