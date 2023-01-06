DECLARE
total number;
BEGIN
	DELETE FROM department where d_name = 'Dental';
	IF sql%found THEN
		dbms_output.put_line('Record Deleted');
	ELSE
		dbms_output.put_line('No Record Deleted');
	END IF;
END;
/
