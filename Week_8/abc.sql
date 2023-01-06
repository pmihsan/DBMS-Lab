declare
cursor pat_cur is select * from patients;
pat patients%ROWTYPE;

begin
	open pat_cur;
	if pat_cur%isopen then
		dbms_output.put_line('Pat_cur is open');
	end if;
	loop
		fetch pat_cur into pat;
		exit when pat_cur%notfound;
		dbms_output.put_line(pat.pat_name || ' ' || pat.sex || ' ' || pat.address || ' ' || pat.pat_age || ' ' || pat.ph_no);
	end loop;
	close pat_cur;
end;
/
