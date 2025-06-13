
create or replace function calToal(salary in number)

return number

as
 
    bonus number;
 
    total_salary number;
 
begin
 
    if salary <= 5000 then
 
        bonus := salary * 0.05;
 
    elsif salary > 5000 then
 
        bonus := salary * 0.10;
 
    else
 
        bonus := 0;
 
    end if;

    total_salary := salary + bonus;


  return   total_salary;

end;
 
/
 
 
declare

ts number;

begin
 
    ts:=calToal(5000);

dbms_output.put_line(ts);

    end ;

   /

 