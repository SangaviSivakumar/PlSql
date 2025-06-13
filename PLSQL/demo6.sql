SET SERVEROUTPUT ON;

DECLARE
n number := &number; 
fact number := 1;
i number := 1;
BEGIN
for i IN 1..n LOOP
   fact := fact * i;
END LOOP;
   DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is ' || fact);
END;
/
