SET SERVEROUTPUT ON;

DECLARE
n NUMBER := &number; 
i NUMBER;
count NUMBER := 0;
BEGIN
FOR i IN 1 .. n LOOP
  IF MOD(n, i) = 0 THEN
    count := count + 1;
  END IF;
 END LOOP;
IF count = 2 THEN
   DBMS_OUTPUT.PUT_LINE(n || ' is a prime number.');
ELSE
   DBMS_OUTPUT.PUT_LINE(n || ' is not a prime number.');
END IF;
 
END;
/
