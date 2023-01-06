declare 
max1 number;
a number;
b number;
c number;

begin

a := &a;
b := &b;
c := &c;

if(a > b) then
	if(a > c) then
		max1 := a;
	end if;
end if;
if(b > a) then
	if(b > c) then
		max1 := b;
	end if;
end if;
if(c > a) then
	if(c > b) then
		max1 := c;
	end if;
end if;

dbms_output.put_line('Max of three elements is '|| max1);


end;
/
