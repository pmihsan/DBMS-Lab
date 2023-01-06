create view patient_details_view as
select name,p_no,age from patient_table where country = 'India'; 
