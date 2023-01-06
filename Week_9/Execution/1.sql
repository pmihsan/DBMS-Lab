create view doctor_details_view as
select doc_name,doc_qualification,doc_no,salary from regulardoctor where salary > (select avg(salary) from regulardoctor);
