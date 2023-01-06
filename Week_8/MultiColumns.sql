Declare
	num number;
	pat patients%rowtype;
	cursor pat_cur is select * from patients;
Begin
	num := 1;
	--dbms_output.put_line('Patient Name');
	open pat_cur;
	loop
		fetch pat_cur into pat;
		exit when pat_cur%notfound;
		dbms_output.put_line(num || ' '|| pat.pat_name|| ' ' || pat.pat_age || ' ' || pat.address || ' ' || pat.sex);
		num := num + 1;
	end loop;
	close pat_cur;
end;
/
