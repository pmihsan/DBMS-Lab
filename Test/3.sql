Declare
entr_date date;
str varchar(20);

begin
	entr_date := &entr_date;
	select to_char(entr_date,'Day') into str from dual;
	if(str = to_char(Date'2022-04-23','Day')  or str = to_char(Date'2022-04-24','Day') ) then
		dbms_output.put_line('Given '||str||' is a weekend.');
	else 
		dbms_output.put_line('Given '||str||' is a weekday.');
	end if;
end;
/
