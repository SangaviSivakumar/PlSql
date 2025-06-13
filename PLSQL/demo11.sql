SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE calc_bonus (salary IN NUMBER) AS
bonus   NUMBER;
total   NUMBER;
BEGIN
  IF salary <= 5000 THEN
    bonus := salary * 0.05;
  ELSE
    bonus := salary * 0.10;
  END IF;

  total := salary + bonus;

  DBMS_OUTPUT.PUT_LINE('Salary        : ' || salary);
  DBMS_OUTPUT.PUT_LINE('Bonus         : ' || bonus);
  DBMS_OUTPUT.PUT_LINE('Total Salary  : ' || total);
END;
/

BEGIN
  calc_bonus(4800);  
END;
/
