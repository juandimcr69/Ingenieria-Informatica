program P4_3_billetes;

type 
     Cliente = record
         edad : boolean;
         salud : boolean;
         accidente : boolean;
     end;
var
    miCliente : Cliente;
    op : char;
begin
    write('¿La edad del cliente es superior a 30 (s/n)? ');
    readln(op);
    if (op = 's') or (op = 'S') then
        miCliente.edad := true
    else
        miCliente.edad := false;

    write('¿La salud del cliente es buena (s/n)? ');
    readln(op);
    if (op = 's') or (op = 'S') then
        miCliente.salud := true
    else
        miCliente.salud := false;
        
    write('¿Ha tenído alguna vez un accidente (s/n)? ');
    readln(op);
    if (op = 's') or (op = 'S') then
        miCliente.accidente := true
    else
        miCliente.accidente := false;
        
    
    if (miCliente.salud and miCliente.accidente)  or (not(miCliente.salud) and not(miCliente.accidente)) then
       writeln('LLamar a experto')
    else if (not (miCliente.Salud) and miCliente.accidente) then
       writeln('Rechazado')
    else if (miCliente.edad and miCliente.salud and not(miCliente.accidente)) then
       writeln('Contrato tipo B')     
    else if (not(miCliente.edad) and miCliente.salud and not(miCliente.accidente)) then
       writeln('Contrato tipo A');     
end.
