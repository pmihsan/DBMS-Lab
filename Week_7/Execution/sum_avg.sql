declare 
sum1 number;
avg1 number;
a number;
b number;
c number;

begin
sum1 := 0;
avg1 := 0;

a := &a;
b := &b;
c := &c;

sum1 := a + b + c;
avg1 := sum1 / 3;
dbms_output.put_line('Sum of '||a||','||b||','||c||' is '||sum1);
dbms_output.put_line('Average is '|| avg1);

end;
/
