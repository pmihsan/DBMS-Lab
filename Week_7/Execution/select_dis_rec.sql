declare
pname varchar(20);
p_id number(3);
s char(1);
begin
	select name,pid,sex into pname,p_id,s from pat_entry where condition = 'Discharged';
	dbms_output.put_line('Patient name '|| pname);
	dbms_output.put_line('Patinet Sex '|| s);
	dbms_output.put_line('Patient id - ' || p_id);
end;
/
