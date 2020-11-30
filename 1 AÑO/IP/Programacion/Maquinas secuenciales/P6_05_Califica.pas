program secuencias_reales_1;
uses
	unitmsr1;
const
	Aprobado = 5.0;
var
	S : Msr1;
	cont : Integer;
begin
	Encender_Maquina_Msr1 (S);
	Cargar_Fichero_Msr1 (S, 'entrada3.txt');
	Comenzar_Msr1 (S);
	cont := 0;
	while EA_Msr1 (s) <> Msr1_MarcaFin do
	begin
		if EA_Msr1(s) >= Aprobado then 
			cont := cont + 1;
		Avanzar_Msr1 (S)
	end;
	Write ('El número de aprobados es: ', cont)
end.
