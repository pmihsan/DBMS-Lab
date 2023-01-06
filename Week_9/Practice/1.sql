CREATE OR REPLACE TRIGGER disp_diff
BEFORE INSERT OR UPDATE OR DELETE ON prac_trigger
FOR EACH ROW
--WHEN(NEW.id > 0)
DECLARE
	diff number;
BEGIN
	diff := :NEW.id - :OLD.id;
	dbms_output.put_line('Old: '||:OLD.id||' New: '||:NEW.id||' Diff: '||diff);
END;
/
