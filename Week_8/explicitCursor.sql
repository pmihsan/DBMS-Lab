DECLARE 
   c_id customer.id%type; 
   c_name customer.c_name%type; 
   c_addr customer.address%type; 

   CURSOR c_customer is 
      SELECT id, c_name, address FROM customer; 
BEGIN 
   OPEN c_customer; 
   LOOP 
   FETCH c_customer into c_id, c_name, c_addr; 
      EXIT WHEN c_customer%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr); 
   END LOOP; 
   CLOSE c_customer; 
END; 
/
