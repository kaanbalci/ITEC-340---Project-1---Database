/* 
Kaan Balci Lab 5 
PL/SQL
*/


SET SERVEROUTPUT ON;
-- name the procedure display
CREATE PROCEDURE display()

BEGIN
	SELECT ProdNo, ProdName FROM Product;

END;


-- function for #12
SET SERVEROUTPUT ON;
DECLARE 
	qtyOrdered	 	INTEGER;
	qtyOnHand		INTEGER;
BEGIN
-- IF ELSE statement to check quantity on hand of a product
IF qtyOnHand < qtyOrdered THEN
	RETURN FALSE;

ELSE IF qtyOnHand >= qtyOrdered  THEN
	RETURN TRUE;
END IF;








                             
