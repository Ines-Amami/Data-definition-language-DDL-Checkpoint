
CREATE TABLE Customer ( 
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    Customer_Name VARCHAR2(20)CONSTRAINT nm_customer NOT NULL,
    Customer_Tel NUMBER
    );
CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY, 
    Product_Name VARCHAR2(20)CONSTRAINT nm_product NOT NULL, 
    Price NUMBER CONSTRAINT n_product CHECK (Price > 0)
    );
CREATE TABLE Orders( 
  customer_id VARCHAR2(20),
  product_id VARCHAR2(20),
  quantity NUMBER,
  total_amount NUMBER,
  CONSTRAINT fk_customers FOREIGN KEY (customer_id)REFERENCES (customers_id),
  CONSTRAINT fk_products FOREIGN KEY (product_id)REFERENCES (products_id)
  );


/*Add a column Category (VARCHAR2(20)) to the PRODUCT table*/

ALTER TABLE Product ADD category VARCHAR2(20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.*/

ALTER TABLE Orders ADD order_date  Date DEFAULT SYSDATE;
