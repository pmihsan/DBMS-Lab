create or replace procedure deleteRec
as
begin
	delete from pat_entry where pid = 23;
	dbms_output.put_line('Record  Deleted');
end;
/
