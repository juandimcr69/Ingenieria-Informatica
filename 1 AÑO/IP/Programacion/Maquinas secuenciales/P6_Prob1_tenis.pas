program puntuacion_tenis;

Uses
	unitmsc1;

Type 
    Puntuacion = record 
    juego1 : integer;
    juego2 : integer;
    parcial1 : integer;
    parcial2 : integer;
 end;

Var
	S : MSC1;
	punto : Char;
    partido : Puntuacion;

Procedure imprimePunto (punto : integer);
 begin
     case punto of 
       0 : write('nada');
       1 : write('quince');
       2 : write('treinta');
       3 : write('cuarenta');
       4 : write('juego para el jugador1 ');
       5 : write('juego para el jugador2 ');
     end;
 end;

Procedure marcador (var partido : Puntuacion; punto : char);
 begin 
    {* Asigno el punto a quien corresponda *}
    if (punto = '1') then  
        partido.parcial1 := partido.parcial1 + 1
    else 
        partido.parcial2 := partido.parcial2 + 1;
    {* si estan empatados los imprimo *}
    if (partido.parcial1 = partido.parcial2) then 
      begin
          write('Iguales a ');
          imprimePunto(partido.parcial1);
      end
    {* juego para el primero *}
    else if (partido.parcial1 = 4) then 
      begin
          partido.parcial1 := 0;
          partido.parcial2 := 0;
          partido.juego1 := partido.juego1 + 1;
          imprimePunto(4); 
      end
    {* juego para el segundo *}
    else if (partido.parcial1 = 5) then 
      begin
          partido.parcial1 := 0;
          partido.parcial2 := 0;
          partido.juego2 := partido.juego2 + 1;
          imprimePunto(5); 
      end
    {* juego en disputa *}
    else 
      begin
          imprimePunto(partido.parcial1);
          write(' <> ');
          imprimePunto(partido.parcial2);
      end;
 end;

Begin
    
	Encender_Maquina_MSC1 (S);
	Cargar_Fichero_MSC1 (S, 'partido.txt');
	Comenzar_MSC1 (S);
	(* Esquema de recorrido del primer modelo *)
	while EA_MSC1 (S) <> MSC1_MarcaFin do
	 begin
		 punto := EA_MSC1(S);
         marcador(partido,punto);
         Avanzar_MSC1 (S);
         writeln;
	 end;


End.
