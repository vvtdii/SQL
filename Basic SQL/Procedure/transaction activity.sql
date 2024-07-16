--1. Write a procedure to increase the price of a specified product category by a given percentage. 
CREATE OR REPLACE PROCEDURE GetNewPrice(IN p_productLine varchar, IN p_percentage int)
LANGUAGE plpgsql
AS $BODY$
DECLARE
    rec RECORD;
    product_cursor CURSOR FOR
        SELECT productName, MSRP*((100.0+p_percentage)/100.0) AS NewMSRP
        FROM products
        WHERE productLine = p_productLine;
BEGIN
    OPEN product_cursor;
    LOOP
        FETCH NEXT FROM product_cursor INTO rec;
        EXIT WHEN NOT FOUND;
        -- Process each record as needed
        RAISE NOTICE 'Product: %, New MSRP: %', rec.productName, rec.NewMSRP;
    END LOOP;
    CLOSE product_cursor;
END;
$BODY$;
CALL GetNewPrice('Motorcycles', 25); --example

--2. Write a procedure to report the amount ordered in a specific month and year for customers containing a specified character string in their name.
CREATE OR REPLACE PROCEDURE TotalOrder(IN p_orderMonth int, IN p_orderYear int, IN p_Name varchar, OUT total int)
LANGUAGE plpgsql
AS $BODY$
BEGIN
    SELECT COUNT(orderNumber) INTO total
    FROM orders
    JOIN customers ON orders.customerNumber = customers.customerNumber
    WHERE EXTRACT(MONTH FROM orderDate) = p_orderMonth
    AND EXTRACT(YEAR FROM orderDate) = p_orderYear
    AND customerName = p_Name;
END;
$BODY$;

--example
DO $$
DECLARE
    total_orders int;
BEGIN
    CALL TotalOrder(06, 2003, 'Online Diecast Creations', total_orders);
    RAISE NOTICE 'Total orders: %', total_orders;
END $$;

--3. Write a procedure to change the credit limit of all customers in a specified country by a specified percentage.
CREATE OR REPLACE PROCEDURE CreditLimit(IN p_country varchar, IN p_percentage int)
LANGUAGE plpgsql
AS $BODY$
DECLARE
    rec RECORD;
    customer_cursor CURSOR FOR
        SELECT customerName, creditLimit * (p_percentage / 100.0) AS NewCreditLimit
        FROM customers
        WHERE country = p_country;
BEGIN
    OPEN customer_cursor;
    LOOP
        FETCH NEXT FROM customer_cursor INTO rec;
        EXIT WHEN NOT FOUND;
        -- Process each record as needed, here we're just raising a notice
        RAISE NOTICE 'Customer: %, New Credit Limit: %', rec.customerName, rec.NewCreditLimit;
    END LOOP;
    CLOSE customer_cursor;
END;
$BODY$;
CALL CreditLimit('USA', 10); --example