program secuencias_caracteres_1;
uses
	unitmsc1;
var
	S : MSC1;
	caracter : Char;
begin
    
	Encender_Maquina_MSC1 (S);
	Cargar_Fichero_MSC1 (S, 'entrada1.txt');
	Comenzar_MSC1 (S);
	(* Esquema de recorrido del primer modelo *)
	while EA_MSC1 (S) <> MSC1_MarcaFin do
	begin
	    caracter := EA_MSC1(S);
		case caracter of
			'a'..'z': writeln(caracter,' > minúscula');
			'A'..'Z': writeln(caracter,' > mayúscula');
			'0'..'9': writeln(caracter,' > dígito');
			else
				writeln(caracter,' > no codificado');
		end;
		Avanzar_MSC1 (S)
	end;
end.
