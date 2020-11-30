program p5_e4_ahorro;
const
    saldoInicial = 125;
var
     M : real;
     saldo : real; (* an *)
     meses : integer;
 function interes(n: integer) : real;
 var
    i : integer;
    nsaldo : real;
 begin
      nsaldo := saldoInicial;
      if (n = 0) then
         interes := nsaldo
      else
      begin
         for i:=1 to n do
                nsaldo := nsaldo + ((0.04/12)*nsaldo)+180;
          interes := nsaldo;
      end;
 end;
begin
   write ('Introduzca el valor de euros a disponer ');
   readln(M);
   saldo := saldoInicial;
   meses := 0;
   (* saldo >= M *)
   (* iterar calculando el saldo hasta obtener el saldo suficiente *)
   while (saldo < M) do
   begin
		saldo := saldo + ( (0.04/12) * saldo ) + 180;
		meses := meses + 1;
   end;
   writeln('Para obtener un saldo de ',M:6:00,' se han nesitado ',meses,' meses > ',(meses/12):6:2,' años');
   
   meses := 0;
   repeat
       meses := meses + 1;
   until (interes(meses) >= M);
   writeln('Para obtener un saldo de ',M:6:00,' se han nesitado ',meses,' meses > ',(meses/12):6:2,' años');
end.
