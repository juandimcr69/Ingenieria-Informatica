program primo;
Var
   p, i:integer;
   
function primo(n :integer) : boolean;
var
    j: integer;
    ra : real;
begin
    if (n=1) or (n=2) then
        primo := true
    else if ((n mod 2) = 0) then
        primo := false
    else
    begin
        j:= 2;
        ra := sqrt(n);
        while ( (n mod j) <> 0 ) or (j <= ra) do
        begin
            j := j+1;
        end;
        if (j = n) then
           primo := true
        else
           primo :=false;
    end;
end;
Begin 
	repeat
	   write ('Introduzca el límite de primos a evaluar :');
	   readln(p);
	until p > 0;
	for i:=1 to p do 
	begin
		if primo(i) then 
			write(i,' ');
	end;
	
End.
