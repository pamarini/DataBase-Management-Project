create schema cs3413_final;   	# change userID with your own user id
use cs3413_final;				# change userID with your own user id


create table brand
	(id				varchar(8),
	 brand_name		varchar(15),
	 primary key (id)
	) ENGINE=INNODB;

create table product
	(upc			varchar(20), 
	 product_name	varchar(15), 
     size			varchar(15),
     primary key (upc)
	)ENGINE=INNODB;

create table category
	(id				varchar(8), 
	 category_name	varchar(20),
	 primary key (id)
	) ENGINE=INNODB;

create table vendor
	(id				varchar(8), 
	 vendor_name	varchar(20),
	 primary key (id)
	);

create table shipment
	(order_no		numeric(0,9), 
	 upc			varchar(8),
	 quantity		numeric(0,9),
     unit_price		numeric(0,9),
	 primary key (order_no)
	);

create table store
	(id				varchar(8), 
	 store_name		varchar(25),
	 city			varchar(20), 
	 address		varchar(20),
	 year			numeric(4,0),
	 primary key (id)
	);

create table ordering
	(id			varchar(8), 
	 primary key (id)
	);

create table customer
	(id				varchar(8), 
	 address		varchar(25), 
	 country		varchar(25),
	 state_prov		varchar(25),
     postal_zip		numeric(0,9),
	 st_address		varchar(20),
	 primary key (ID)

	);



