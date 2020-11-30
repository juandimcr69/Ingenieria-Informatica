program secuencias_reales_1;
uses
	unitmse1;
var
	S,T : Mse1;
	suma : integer;
begin
	Encender_Maquina_Mse1 (S);
	Encender_Maquina_Mse1 (T);
	Cargar_Fichero_Mse1 (S, 'entrada4.txt');
	Comenzar_Mse1 (S);
	Crear_Mse1(T);
	suma := 0;
	while EA_Mse1 (s) <> Mse1_MarcaFin do
	begin
		suma := suma + EA_Mse1 (s);
		Registrar_Mse1(T,suma);
		Avanzar_Mse1 (S)
	end;
	Marcar_Mse1(T);
	Salvar_Fichero_Mse1(T,'salida4.txt');
end.
