declare 
	did doctors.doc_id%type;
	cursor selectData is select * from doctors;
begin 
	did := &did;
	for i in selectData loop
		if i.doc_id = did then
			dbms_output.put_line(i.doc_name || ' ' || i.doc_qualification || ' ' || i.doc_no || ' ' || i.doc_dept);
		end if;
	end loop;
end;
/
