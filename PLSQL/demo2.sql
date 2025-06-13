set serveroutput on;
 
declare 
a  number:=&a;
b number:=&b;
 
c number;
begin
 
c:=a+b;
DBMS_OUTPUT.PUT_LINE('sum of two number' || c);
end ;
/