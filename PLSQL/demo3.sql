SET SERVEROUTPUT ON;

DECLARE
  sal   NUMBER := &salary;
  bonus NUMBER;
  total NUMBER;
BEGIN
  bonus := sal * 0.05;
  total := sal + bonus;

  DBMS_OUTPUT.PUT_LINE('Entered Salary: ' || sal);
  DBMS_OUTPUT.PUT_LINE('Bonus (5%): ' || bonus);
  DBMS_OUTPUT.PUT_LINE('Total Salary (with Bonus): ' || total);
END;
/
