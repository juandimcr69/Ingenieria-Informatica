program secuencias_caracteres_1;
uses
	unitmsc1;
const
	(* Distancia entre los juegos de caracteres mayúsculas y minúsculas: *)
	(* A=65 a=97 *)
	Distancia = ord ('A') - ord ('a');
var
	S, R : MSC1;
	c_conv : Char;
begin
    writeln('A:',ord('A'));
    writeln('a:',ord('a'));
    writeln('Distancia :',distancia);
	Encender_Maquina_MSC1 (S);
	Encender_Maquina_MSC1 (R);
	Cargar_Fichero_MSC1 (S, 'entrada1.txt');
	Comenzar_MSC1 (S);
	Crear_MSC1 (R);
	(* Esquema de recorrido del primer modelo *)
	while EA_MSC1 (S) <> MSC1_MarcaFin do
	begin
		if (EA_MSC1 (S) >= 'a') and (EA_MSC1 (S) <= 'z') then
			c_conv := chr (ord (EA_MSC1 (S)) + Distancia)
		else
			c_conv := EA_MSC1 (S);
		Registrar_MSC1 (R, c_conv);
		Avanzar_MSC1 (S)
	end;
	Marcar_MSC1 (R);
	Salvar_Fichero_MSC1 (R, 'salida1.txt')
end.
