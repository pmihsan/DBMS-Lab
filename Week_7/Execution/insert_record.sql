create or replace procedure insertRec
as
begin
	insert into pat_entry values('Deva','M',24,'In-patient');

	insert into pat_entry values('DCP','M',29,'In-patient');
	dbms_output.put_line('Record Inserted');
end;
/
