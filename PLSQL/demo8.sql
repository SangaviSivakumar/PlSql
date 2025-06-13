set serveroutput on;
 
 
declare
 
Roll number;
fee number;
 
 
begin
 
select roll,fee into Roll,fee from student
where roll=101;
 
 @demo9.sql
if fee>200 then 
  update student set fee=fee+100 where roll=101;
 
 
else
     update student set fee=fee+200 where roll=101;
 
end if;
DBMS_OUTPUT.PUT_LINE( Roll  ||   fee);
 
end;
/