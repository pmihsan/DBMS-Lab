DECLARE  
   totalRows number(4); 
BEGIN 
	update customer set age = age + 1 where age > 200;
   IF sql%notfound THEN 
      dbms_output.put_line('no rows selected'); 
   ELSIF sql%found THEN 
      totalRows := sql%rowcount;
      dbms_output.put_line( totalRows || ' rows selected'); 
   END IF;  
END;
/
