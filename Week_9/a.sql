create or replace trigger update_bill_trigger
after insert on phonecall

for each row
declare
pps number;
plan_code varchar(20);
confee number(6,2);
cus_ssn number;
sec number;
amt number(12,2);
ans number;

begin
--cus_ssn := :NEW.ssn
--select ssn,seconds into cus_ssn,sec from phonecall;
select plan into plan_code from phonecall_customer where ssn = :NEW.ssn;
select connectionfee,pricespersecond into confee,pps from pricingplan where code = to_number(plan_code);
select amount into amt from bill where ssn = :NEW.ssn;
ans := ( amt + (confee * pps * sec) );
dbms_output.put_line('Number '||ans);
update bill set amount = amt where ssn = cus_ssn;
end;
/
