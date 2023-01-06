CREATE OR REPLACE TRIGGER disp_diff
BEFORE DELETE OR INSERT OR UPDATE ON prac_trigger
FOR EACH ROW
WHEN(NEW.id > 0)
DECLARE
	diff number;
BEGIN
	diff := :NEW.id - :OLD.id;
	dbms_output.put_line('Old: '||:OLD.id||' New: '||:NEW.id||' Diff: '||diff);
END;
/
Create or replace trigger diff
Before Insert OR Update OR Delete on sample3
for each row
when( NEW.sim_val > 0)
declare 
	sal_diff number;
begin
	
	sal_diff := :NEW.sim_val - :OLD.sim_val; 
	dbms_output.put_line('Hello From Trigger');

	dbms_output.put_line('New Value: '|| :NEW.sim_val); 
	dbms_output.put_line('Old Value: '|| :OLD.sim_val); 
	
	dbms_output.put_line('Difference: '|| sal_diff); 
end;
/
CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON customers_triggers
FOR EACH ROW 
WHEN (NEW.ID > 0) 
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
/
