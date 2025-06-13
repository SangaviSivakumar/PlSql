SET SERVEROUTPUT ON;

DECLARE
  input_user_id   VARCHAR2(30) := '&user_id';
  input_password  VARCHAR2(30) := '&password';

  actual_user_id  VARCHAR2(30) := 'admin';
  actual_password VARCHAR2(30) := 'admin123';
BEGIN
  IF input_user_id = actual_user_id AND input_password = actual_password THEN
    DBMS_OUTPUT.PUT_LINE('Login successful...');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Invalid user ID or password.');
  END IF;
END;
/
