declare 
n number;
begin
	n := &n;
	delete from pat_entry where pid = n;	
	dbms_output.put_line('Deleted Successfully');
end;
