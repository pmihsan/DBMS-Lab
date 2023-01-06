DECLARE  
   total_rows number(4); 
BEGIN 

   UPDATE sample3 SET sim_val = sim_val +1; 

   IF sql%notfound THEN 
      dbms_output.put_line('no rows selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' rows selected '); 
   END IF;  
END;
/
