Declare
ch char(1);

begin 
	ch := &ch;
	if(ascii(ch) >= 97 and ascii(ch) <= 122 or ascii(ch) >= 65 and ascii(ch) <= 90) then
		dbms_output.put_line('Character '||ch||' '  || ascii(ch));
	elsif( ascii(ch) >= 48 and ascii(ch) <= 57) then 
		dbms_output.put_line('Number '||ch||' ' || ascii(ch));
	end if;
end;
/
		
