program secuencias_enteros_1;
uses
	unitmse1;
var
	S, R : Mse1;
begin
	Encender_Maquina_Mse1 (S);
	Encender_Maquina_Mse1 (R);
	Cargar_Fichero_Mse1 (S, 'entrada2.txt');
	Comenzar_Mse1 (S);
	Crear_Mse1 (R);
	while EA_Mse1 (S) <> Mse1_MarcaFin do
	begin
		Write (EA_Mse1 (S), ', ');
		Registrar_Mse1 (R, EA_Mse1 (S) * EA_Mse1 (S));
		Avanzar_Mse1 (S)
	end;
	Marcar_Mse1 (R);
	Salvar_Fichero_Mse1 (R, 'salida2.txt');
end.
