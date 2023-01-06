declare
pname patients.pat_name%type;
psex patients.sex%type;
paddress patients.address%type;
page patients.pat_age%type;
pph_no patients.ph_no%type;

cursor pat_cur is
	select pat_name, sex, address, pat_age, ph_no from patients;

begin
	open pat_cur;
	loop
		fetch pat_cur into pname, psex, paddress, page, pph_no;
		exit when pat_cur%notfound;
		dbms_output.put_line(pname || ' ' || psex || ' ' || paddress || ' ' || page || ' ' || pph_no);
	end loop;
	close pat_cur;
end;
/
