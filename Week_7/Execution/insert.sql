declare 
pid number(3);
name varchar(20);
sex char(1);
id number;
condition varchar(20);
begin
	pid := &pid;
	name := &name;
	sex := &sex;
	id := &id;
	condition := &condition;
	insert into pat_entry values(name,sex,pid,condition,id);
	dbms_output.put_line('Inserted Successfully');
end;
