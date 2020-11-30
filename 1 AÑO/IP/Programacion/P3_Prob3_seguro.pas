program seguros_profe;
type
   Cliente = record
      edad : boolean;
      salud: boolean;
      accidente : boolean;
   
   end;

var

   miCliente : Cliente;
   op : char;
   

begin

  //leemos los valores
   write('¿Tiene más de 30 años? s/n : ');
   readln(op);
   
     if (op = 's') or (op = 'S') then   
        miCliente.edad := true
     else
        miCliente.edad := false;

   write('¿Tiene buena salud? s/n : ');
   readln(op);
   
   if (op = 's') or (op = 'S') then   
        miCliente.salud := true
     else
        miCliente.salud := false;

   write('¿Ha tenido algun accidente? s/n : ');
   readln(op);
   
   if (op = 's') or (op = 'S') then   
        miCliente.accidente := true
     else
        miCliente.accidente := false;


   if (miCliente.salud and miCliente.accidente) or (not(miCliente.salud) and not(miCliente.accidente)) then 
       writeln('Llamar a experto')
       
   else if (not (miCliente.salud) and miCliente.accidente) then
       writeln('Rechazado')
       
   else if (miCliente.edad and miCliente.salud and not(miCliente.accidente)) then
       writeln('Contrato tipo B')
       
   else if (not (miCliente.edad) and miCliente.salud and not(miCliente.accidente)) then
       writeln('Contrato tipo A')
       
end.

