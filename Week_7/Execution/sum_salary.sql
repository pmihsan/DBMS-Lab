declare
n number(12,2);
dept varchar(20);
begin
	dept := &dept;
	select sum(salary) into n from regulardoctor where doc_dept = dept;
	dbms_output.put_line('Salary of doctors in '||dept||' is ' || n);
end;
/
