create or replace procedure totsal(
  salary  in number,  
  bonus out number,
  total out number
) as
begin
  bonus := salary * 0.05;
  total := salary + bonus;
end;
/
declare
  bonus number;
  total number;
  s number := 5000;
begin
  totsal(s, bonus, total);
  dbms_output.put_line('Total salary: ' || total);
  dbms_output.put_line('Bonus: ' || bonus);
end;
/