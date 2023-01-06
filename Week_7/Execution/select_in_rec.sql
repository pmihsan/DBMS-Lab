declare
pname varchar(20);
s char(1);
p_id number(3);
cond varchar(20);
c varchar(20);
n number;
begin
	c := &c;
	select count(*) into n from pat_entry;
	for i in 1..n loop
		select name,sex,pid,condition into pname,s,p_id,cond from pat_entry where id = i;
		if(cond = c) then
		dbms_output.put_line('Patient name '|| pname);
		dbms_output.put_line('Patinet Sex '|| s);
		dbms_output.put_line('Patient id - ' || p_id);
		end if;
	end loop;
end;
/
