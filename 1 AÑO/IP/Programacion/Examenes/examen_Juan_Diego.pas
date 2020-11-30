program examen_Juan_Diego;

Const 

    ingresoInicial = 50;  // el ingreso incial es una constante

Var 

    meses :integer;
    saldo, D : real; //D son los euros que dispondra en x meses


function AhorradoEn (m:integer) : real;

begin
       if (m=0) then
           AhorradoEn := ingresoInicial                                           //si transcurren 0 meses, sus ahorros es igual a su ingreso incial
      else
           AhorradoEn := AhorradoEn(m-1) + ((0.02/12)*AhorradoEn(m-1)) + 100;
end; 

Begin 

	write ('Introduzca la cantidad de dinero a ahorrar : ');  //lee la cantidad de dinero a ahorrar
	readln(D);

    meses := 0;
    saldo := AhorradoEn(meses);

    while (saldo < D) do
      begin
           writeln(saldo:10:2);
           meses := meses+1;
           saldo := AhorradoEn(meses);
      end;
    
      writeln('Para obtener un ahorro de',saldo:10:2,' tiene que esperar ',meses,' meses');

End.

//si pone un numero grande tarda en dar la solucion por la cantidad de operaciones que hace. Cuando termina de imprimir los saldos te muestra el resultado
