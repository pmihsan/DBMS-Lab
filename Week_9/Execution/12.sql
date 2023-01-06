create or replace trigger pat_sym
before insert or delete or update on patient_table
for each row
when(NEW.p_no > 0 or OLD.p_no > 0)
begin
dbms_output.put_line('patient Symmetry trigger ');
end;
/
