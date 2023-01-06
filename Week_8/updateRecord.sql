--DECLARE
--total number;
BEGIN
	UPDATE DEPARTMENT SET D_LOCATION = 'Madurai' WHERE D_NAME = ANY ('Emergency', 'Emergency1', 'Emergency2', 'Emergency3');  
	IF sql%notfound THEN
		dbms_output.put_line('No Record Updated');
	ELSE
		dbms_output.put_line(sql%rowcount || ' rows updated');
	END IF;
END;
/
