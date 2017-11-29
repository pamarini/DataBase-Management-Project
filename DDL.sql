CREATE DATABASE IF NOT EXISTS cs3413_final;

USE cs3413_final;

CREATE TABLE addresses
(
  id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  address    VARCHAR(50) NOT NULL,
  address2   VARCHAR(50) NOT NULL,
  city       VARCHAR(50) NOT NULL,
  state_prov VARCHAR(50) NOT NULL,
  country    VARCHAR(50) NOT NULL,
  postal_zip VARCHAR(50) NOT NULL
);

CREATE TABLE brands
(
  id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE products
(
  upc          VARCHAR(12)    NOT NULL PRIMARY KEY,
  product_name VARCHAR(50)    NOT NULL,
  size         VARCHAR(50)    NOT NULL,
  msrp         DECIMAL(15, 2) NOT NULL,
  brand_id     INT            NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES brands (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE categories
(
  id            INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(50)
);

CREATE TABLE category_product
(
  category_id INT         NOT NULL,
  product_upc VARCHAR(12) NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (product_upc) REFERENCES products (upc)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  PRIMARY KEY (category_id, product_upc)
);

CREATE TABLE vendors
(
  id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE brand_vendor
(
  brand_id  INT NOT NULL,
  vendor_id INT NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES brands (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (vendor_id) REFERENCES vendors (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  PRIMARY KEY (brand_id, vendor_id)
);

CREATE TABLE stores
(
  id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name       VARCHAR(50) NOT NULL,
  address_id INT         NOT NULL,
  FOREIGN KEY (address_id) REFERENCES addresses (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE stock
(
  product_upc VARCHAR(12)    NOT NULL,
  vendor_id   INT            NOT NULL,
  store_id    INT            NOT NULL,
  quantity    INT            NOT NULL,
  price       DECIMAL(15, 2) NOT NULL,
  FOREIGN KEY (product_upc) REFERENCES products (upc)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (vendor_id) REFERENCES vendors (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (store_id) REFERENCES stores (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  PRIMARY KEY (product_upc, vendor_id, store_id)
);

CREATE TABLE shipments
(
  id           INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vendor_id    INT      NOT NULL,
  store_id     INT      NOT NULL,
  sent_date    DATETIME NOT NULL,
  recieve_date DATETIME NOT NULL,
  FOREIGN KEY (vendor_id) REFERENCES vendors (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (store_id) REFERENCES stores (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE product_shipment
(
  shipment_id INT            NOT NULL,
  product_upc VARCHAR(12)    NOT NULL,
  quantity    INT            NOT NULL,
  unit_price  DECIMAL(15, 2) NOT NULL,
  FOREIGN KEY (shipment_id) REFERENCES shipments (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (product_upc) REFERENCES products (upc)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  PRIMARY KEY (shipment_id, product_upc)
);

CREATE TABLE customers
(
  id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email      VARCHAR(50) NOT NULL,
  password   VARCHAR(50) NOT NULL,
  address_id INT         NOT NULL,
  FOREIGN KEY (address_id) REFERENCES addresses (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE orders
(
  id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE order_product
(
  order_id    INT            NOT NULL,
  product_upc VARCHAR(12)    NOT NULL,
  quantity    INT            NOT NULL,
  unit_price  DECIMAL(15, 2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (product_upc) REFERENCES products (upc)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  PRIMARY KEY (order_id, product_upc)
)





