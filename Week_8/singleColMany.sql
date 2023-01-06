Declare
	num number;
	name patients.pat_name%type;
	cursor pat_cur is select pat_name from patients;
Begin
	num := 1;
	dbms_output.put_line('Patient Name');
	open pat_cur;
	loop
		fetch pat_cur into name;
		exit when pat_cur%notfound;
		dbms_output.put_line(num || ' '|| name);
		num := num + 1;
	end loop;
	close pat_cur;
end;
/
