CREATE OR REPLACE FUNCTION get_factorial(n IN NUMBER)
RETURN NUMBER
IS
  fact NUMBER := 1;
  i    NUMBER := 1;
BEGIN
  IF n < 0 THEN
    RETURN NULL; -- Factorial not defined for negative numbers
  END IF;

  FOR i IN 1..n LOOP
    fact := fact * i;
  END LOOP;

  RETURN fact;
END;
/

SET SERVEROUTPUT ON;

DECLARE
  num NUMBER := 5;
  result NUMBER;
BEGIN
  result := get_factorial(num);
  DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is ' || result);
END;
/
