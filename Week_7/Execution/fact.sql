declare 
n number;
ans number;

begin
ans := 1;
n := &n;

for i in 1..n loop
	ans := ans * i;
end loop;

dbms_output.put_line('Factorial of '||n||' is '||ans);
end;
/
