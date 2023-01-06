DECLARE  
   totalRows number(4); 
BEGIN 
   UPDATE sample3 SET sim_val = sim_val -1; 

   IF sql%notfound THEN 
      dbms_output.put_line('no rows updated'); 
   ELSIF sql%found THEN 
      totalRows := sql%rowcount;
      dbms_output.put_line( totalRows || ' rows updated'); 
   END IF;  
END;
/
