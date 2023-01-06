declare 
a number(12,2);
b number(12,2);
id1 number;
id2 number;
name1 varchar(20);
name2 varchar(20);
begin
	id1 := &id1;
	id2 := &id2;
	select doc_name, salary into name1,a from regulardoctor where doc_no = id1;
	select doc_name, salary into name2,b from regulardoctor where doc_no = id2;
	if (a > b) then
		dbms_output.put_line('Doctor - '||name1||' recevive maximum salary of '|| a);
	else
		dbms_output.put_line('Doctor - '||name2||' recevive maximum salary of '|| b);
	end if;
end;
/
