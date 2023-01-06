declare
pat patients%rowtype;

begin
	if sql%isopen then
		dbms_output.put_line('Implicit cursor is open');
	end if;
	select * into pat from patients where pat_age = 52;
	if sql%isopen then
		dbms_output.put_line('Implicit cursor is open');
	else
		dbms_output.put_line(pat.pat_name || ' ' || pat.pat_age);
	end if;
end;
/
