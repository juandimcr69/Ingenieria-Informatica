program P4_3_max3;
var
    n1, n2, n3: Integer;
    mayor : Integer;

function max2 ( v1, v2 : Integer) : Integer;
begin
 if (v1 > v2) then 
     max2 := v1
 else
     max2 := v2;
end;

function max3 ( v1, v2, v3 : Integer) : Integer;
begin
  max3 := max2( max2(v1,v2), v3);
end;


begin
    Write('Introduce tres valores ');
    readln(n1, n2, n3);
    mayor := max3(n1,n2,n3);
    Write ('El mayor es ',mayor);
end.
