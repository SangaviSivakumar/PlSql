set serveroutput on;

declare

salary number:=&salary;
bonus number;
total_sal number;

begin

if salary <= 5000 then
   bonus:= salary*5/100;
else
   bonus:= salary*10/100;

end if;

total_sal:=salary+bonus;
dbms_output.put_line('your salary is' || salary);
dbms_output.put_line('your bonus is' || bonus);
dbms_output.put_line('your total salary is' || total_sal);

end;
/