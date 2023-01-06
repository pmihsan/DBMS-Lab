declare
c number := 2;
n number;
flag number(1) := 0;
begin
	n := &n;
	while c*c <= n loop
		if (mod(n,c) = 0) then
			flag := 1;
			exit;
		end if;
		c := c + 1;
	end loop;
	if flag = 0 then
		dbms_output.put_line('Prime');
	else
		dbms_output.put_line('Not a Prime');
	end if;
end;
/
