declare
n number;
a number;
b number;
c number;

begin
a := 0;
b := 1;
c := 0;
n := &n;

dbms_output.put_line('Fibo of 0 is 0');

dbms_output.put_line('Fibo of 1 is 1');
for i in 2..n loop
	c := a + b;
	a := b;
	b := c;
	dbms_output.put_line('Fibo of '||i||' is '|| c);
end loop;

end;	
/
