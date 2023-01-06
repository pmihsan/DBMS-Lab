create or replace trigger sample_trig 
before insert on sample4 
for each row
when(NEW.val1 > 0)
begin
insert into sample3 values(:NEW.val1,:NEW.val2);
end;
/
