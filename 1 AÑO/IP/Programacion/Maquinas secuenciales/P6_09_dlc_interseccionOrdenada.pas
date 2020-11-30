program interseccion;

uses
	unitmse1;

var
	S1, S2, R : Mse1;
	d1, d2 : integer;

Begin

	Encender_Maquina_Mse1 (S1);
	Encender_Maquina_Mse1 (S2);
	Encender_Maquina_Mse1 (R);
	Cargar_Fichero_Mse1 (S1, 'secuencia1.txt');
	Cargar_Fichero_Mse1 (S2, 'secuencia2.txt');
	Comenzar_Mse1 (S1);
	Comenzar_Mse1 (S2);
	Crear_Mse1(R);
	d1 := EA_Mse1(S1);
	d2 := EA_Mse1(S2);
	writeln('Inicio d1 ',d1,' d2 ',d2);

	while (d1 <> Mse1_MarcaFin) and (d2 <> Mse1_MarcaFin) do
	begin
      d1 := EA_Mse1(S1);
      d2 := EA_Mse1(S2);
        if (d1 > d2) then //si d1 > d2 avanzar S2, en caso contrario avanzar S1
          while (d2 < d1)  and (d2 <> Mse1_MarcaFin)  do begin //avanza S2 mientras < S1 
              Registrar_Mse1(R,d2);
		      Avanzar_Mse1(S2);
			  d2 := EA_Mse1(S2);
			  writeln('Avanza d2 ',d2,' d1 ',d1);
		  end
		else 
		   while (d1 < d2)  and (d1 <> Mse1_MarcaFin) do begin //avanza S1 mientras < S2 
              Registrar_Mse1(R,d1);
		       Avanzar_Mse1(S1);
			   d1 := EA_Mse1(S1);
			   writeln('Avanza d1 ',d1,' d2 ',d2);
		   end;
		if (d1 = d2) and (d1 <> Mse1_MarcaFin) then begin 
		  Registrar_Mse1(R,d1);
		  writeln('Iguales d1 ',d1,' d2 ',d2);
		  Avanzar_Mse1(S1);
		  Avanzar_Mse1(S2);
		  d1 := EA_Mse1(S1);
		  d2 := EA_Mse1(S2);
		end;
	end;

	Marcar_Mse1(R);
	Salvar_Fichero_Mse1(R,'sec-completa.txt');

End.
