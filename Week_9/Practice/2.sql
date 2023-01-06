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
