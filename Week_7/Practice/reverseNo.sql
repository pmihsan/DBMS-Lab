declare
n number;
ans number;
res number;

begin
n := &n;
ans := 0;

while n > 0 loop
	res := mod(n,10);
	ans := ans * 10 + res;
	n := n / 10;	
end loop;

dbms_output.put_line('Reverse of given number is ' || ans);

end;
/
