Declare
	name patients.pat_name%type;
Begin
	select pat_name into name from patients where pat_id_no = 57;
	dbms_output.put_line('Patient Name');
	dbms_output.put_line('1. '|| name);
end;
/
