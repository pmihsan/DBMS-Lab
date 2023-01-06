create or replace trigger init_trigger
after insert on phonecall_customer
for each row
when(NEW.ssn > 0)
begin
	insert into bill values(:NEW.ssn,to_char(sysdate,'MM'),to_char(sysdate,'YYYY'),0);
end;
/
