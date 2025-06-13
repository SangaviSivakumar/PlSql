SET SERVEROUTPUT ON;

DECLARE
book_name     VARCHAR2(50) := '&book_name';
price         NUMBER(10, 2);
category      VARCHAR2(10);
discount      NUMBER(10, 2);
final_price   NUMBER(10, 2);
BEGIN
  SELECT price, category INTO price, category
FROM books
WHERE LOWER(book_name) = LOWER(book_name)
AND ROWNUM = 1;


  IF category = 'IT' THEN
    discount := 5;
  ELSE
    discount := 10;
  END IF;

  final_price := price - (price * discount / 100);

  UPDATE books
  SET discounted_price = final_price
  WHERE LOWER(book_name) = LOWER(book_name);

  DBMS_OUTPUT.PUT_LINE('Book Name: ' || book_name);
  DBMS_OUTPUT.PUT_LINE('Category: ' || category);
  DBMS_OUTPUT.PUT_LINE('Original Price: ' || price);
  DBMS_OUTPUT.PUT_LINE('Discount: ' || discount || '%');
  DBMS_OUTPUT.PUT_LINE('Discounted Price updated to: ' || final_price);

  
END;
/
