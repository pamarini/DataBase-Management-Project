-- CANADIAN TIRE DATA RELATIONS --
USE cs3413_final;

insert into users values (id,'customer@user.com', 'password', 'user');
insert into users values (id,'shopper@user.com', 'password', 'user');
insert into users values (id,'browser@user.com', 'password', 'user');
insert into users values (id,'peruser@user.com', 'password', 'user');

insert into users values (id,'manager@manager.com', 'password', 'manager');
insert into users values (id,'vendor@vendor.com', 'password', 'vendor');

--  addresses
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (1, '307 2nd Pass', ' ', 'Lac La Biche', 'Alberta', 'Canada', 'E1WE1W');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (2, '0 Ridgeway Parkway', ' ', 'La Sarre', 'Québec', 'Canada', 'J9ZJ9Z');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (3, '6 Claremont Plaza', ' ', 'Anmore', 'British Columbia', 'Canada', 'V5AV5A');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (4, '94100 Barnett Road', ' ', 'L''Épiphanie', 'Québec', 'Canada', 'J5XJ5X');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (5, '00 Ramsey Park', ' ', 'Chester', 'Nova Scotia', 'Canada', 'N9AN9A');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (6, '0 Northport Plaza', ' ', 'Port-Cartier', 'Québec', 'Canada', 'G5BG5B');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (7, '2080 Lyons Court', ' ', 'Windsor', 'Québec', 'Canada', 'J1SJ1S');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (8, '2778 Roth Street', ' ', 'Winnipeg', 'Manitoba', 'Canada', 'R3LR3L');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (9, '2 Clyde Gallagher Court', ' ', 'Osoyoos', 'British Columbia', 'Canada', 'N9VN9V');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (10, '3815 Butternut Court', ' ', 'Digby', 'Nova Scotia', 'Canada', 'N3YN3Y');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (11, '4530 Meadow Ridge Crossing', ' ', 'Penticton', 'British Columbia', 'Canada', 'V2AV2A');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (12, '26593 Kensington Court', ' ', 'Stonewall', 'Manitoba', 'Canada', 'H9JH9J');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (13, '1 Truax Pass', ' ', 'Unity', 'Saskatchewan', 'Canada', 'J8RJ8R');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (14, '4 Cambridge Hill', ' ', 'Sainte-Anne-de-Bellevue', 'Québec', 'Canada', 'H9XH9X');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (15, '97 Comanche Alley', ' ', 'Amos', 'Québec', 'Canada', 'J9TJ9T');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (16, '87 Cardinal Drive', ' ', 'Saint-Ambroise', 'Québec', 'Canada', 'G7PG7P');

-- not used
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (17, '84370 Reinke Lane', ' ', 'Saint-André-Avellin', 'Québec', 'Canada', 'T5YT5Y');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (18, '4824 Anderson Place', ' ', 'Richibucto', 'New Brunswick', 'Canada', 'E4WE4W');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (19, '015 Doe Crossing Parkway', ' ', 'Lumsden', 'Saskatchewan', 'Canada', 'L7EL7E');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (20, '41709 Sage Crossing', ' ', 'Bay Roberts', 'Newfoundland and Labrador', 'Canada', 'V3BV3B');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (21, '68 Jana Crossing', ' ', 'North Perth', 'Ontario', 'Canada', 'E6JE6J');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (22, '72 Fuller Way', ' ', 'Pemberton', 'British Columbia', 'Canada', 'E1WE1W');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (23, '677 Lukken Avenue', ' ', 'Acton Vale', 'Québec', 'Canada', 'G0EG0E');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (24, '0 Anzinger Lane', ' ', 'Nanaimo', 'British Columbia', 'Canada', 'V6LV6L');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (25, '45530 Grover Crossing', ' ', 'Markham', 'Ontario', 'Canada', 'L6EL6E');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (26, '9 Mallory Lane', ' ', 'Anmore', 'British Columbia', 'Canada', 'V5AV5A');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (27, '8992 Golden Leaf Avenue', ' ', 'Kingsey Falls', 'Québec', 'Canada', 'T8HT8H');
insert into addresses (id, address, address2, city, state_prov, country, postal_zip) values (28, '91 Arrowood Court', ' ', 'Lumby', 'British Columbia', 'Canada', 'P7LP7L');

-- id,		name,		address_id
insert into stores values (1, 'TBay North', 11);
insert into stores values (2, 'TBay South', 12);		-- using legit address number 11 - 15
insert into stores values (3, 'Nipigon', 13);
insert into stores values (4, 'Kenora', 14);
insert into stores values (5, 'Sault Ste. Marie ', 15);

insert into brands values (1, 'Bridgestone'); -- start of auto brands
insert into brands values (2, 'Michelin');
insert into brands values (3, 'Motomaster');
insert into brands values (4, 'Castrol');
insert into brands values (5, 'Goodyear');
insert into brands values (6, 'MasterCraft');	-- start of tools & hardware brands
insert into brands values (7, 'Maximum');
insert into brands values (8, 'Preimer');
insert into brands values (9, 'Stanley');
insert into brands values (10, 'DeWalt');
insert into brands values (11, 'RubberMaid');	-- start of home & essential brands
insert into brands values (12, 'Swifter');
insert into brands values (13, 'Dawn');
insert into brands values (14, 'Dyson');
insert into brands values (15, 'KitchenAid');
insert into brands values (16, 'Mr.Clean');
insert into brands values (17, 'Reebok');		-- start of sport & rec brands
insert into brands values (18, 'CMM');
insert into brands values (19, 'Coleman');
insert into brands values (20, 'Nike');
insert into brands values (21, 'Schwinn');
insert into brands values (22, 'Easton');
insert into brands values (23, 'YardWorks'); 	-- start of seasonal brands
insert into brands values (24, 'LEGO');
insert into brands values (25, 'NOMA');
insert into brands values (26, 'National');

insert into vendors values (1, 'Sysco');
insert into vendors values (2, 'Cosco');
insert into vendors values (3, 'Mongo');
insert into vendors values (4, 'Bongo');


-- vendors 1 and 2 sell all brands of tires
insert into brand_vendor values (1, 1);
insert into brand_vendor values (2, 1);
insert into brand_vendor values (5, 1);
insert into brand_vendor values (1, 2);
insert into brand_vendor values (2, 2);
insert into brand_vendor values (5, 2);

-- each vendor sells one brand of tools
insert into brand_vendor values (6, 1);
insert into brand_vendor values (7, 2);
insert into brand_vendor values (8, 3);
insert into brand_vendor values (9, 4);

-- vendors 3 and 4 sell cleaning products
insert into brand_vendor values (13, 3);
insert into brand_vendor values (16, 3);
insert into brand_vendor values (13, 4);
insert into brand_vendor values (16, 4);

-- vendor 3 sells CMM skates and bikes
insert into brand_vendor values (18, 3);

-- vendor 2 sells other skates and bikes
insert into brand_vendor values (17, 2);
insert into brand_vendor values (21, 2);

-- vendors 1 and 4 sell lawnmowers
insert into brand_vendor values (23, 1);
insert into brand_vendor values (23, 4);


-- id, category_name
insert into categories values (id,'Automotive');
insert into categories values (id,'Tools & Hardware');
insert into categories values (id,'Home & Essentials');
insert into categories values (id,'Sports & Recreation');
insert into categories values (id,'Seasonal');

-- AUTOMOTIVE	  -- upc,	product_name, size, msrp, brand_id
insert into products values (88101, 'Winter Tires', 16, 179.99, 1 );		-- start of auto products
insert into products values (88102, 'Winter Tires', 16, 199.99, 2 );
insert into products values (88103, 'Winter Tires', 17, 219.99, 1 );		-- 16inch 17inch and 18inch wheels
insert into products values (88104, 'Winter Tires', 17, 239.99, 2 );		-- brand 1 = bridgestone
insert into products values (88105, 'Winter Tires', 18, 259.99, 1 );		-- brand 2 = michilen
insert into products values (88106, 'Winter Tires', 18, 299.99, 2 );		-- brand 5 = goodyear
insert into products values (88107, 'Winter Tires', 18, 349.99, 5 );
insert into products values (88108, 'Summer Tires', 16, 129.99, 1 );
insert into products values (88109, 'Summer Tires', 16, 149.99, 2 );
insert into products values (88110, 'Summer Tires', 17, 169.99, 1 );
insert into products values (88111, 'Summer Tires', 17, 189.99, 2 );
insert into products values (88112, 'Summer Tires', 18, 199.99, 1 );
insert into products values (88113, 'Summer Tires', 18, 219.99, 2 );
insert into products values (88114, 'Summer Tires', 18, 249.99, 5 );
insert into products values (88115, 'All Season Tires', 16, 139.99, 1 );
insert into products values (88116, 'All Season Tires', 16, 159.99, 2 );
insert into products values (88117, 'All Season Tires', 17, 179.99, 1 );
insert into products values (88118, 'All Season Tires', 17, 199.99, 2 );
insert into products values (88119, 'All Season Tires', 18, 209.99, 1 );
insert into products values (88120, 'All Season Tires', 18, 229.99, 2 );
insert into products values (88121, 'All Season Tires', 18, 259.99, 5 );

-- TOOLS&HARDWARE	 -- upc,  product_name, size,  msrp, brand_id
insert into products values (88201, 'Screwdriver', 'Slot', 4.99, 6 );		-- brand_id 6-9 = all tool brands
insert into products values (88204, 'Screwdriver', 'Slot', 5.49, 7 );
insert into products values (88207, 'Screwdriver', 'Slot', 6.99, 8 );
insert into products values (88210, 'Screwdriver', 'Slot', 7.99, 9 );
insert into products values (88202, 'Screwdriver', 'Phillips', 10.99, 6 );
insert into products values (88205, 'Screwdriver', 'Phillips', 11.49, 7 );
insert into products values (88208, 'Screwdriver', 'Phillips', 12.99, 8 );
insert into products values (88211, 'Screwdriver', 'Phillips', 13.99, 9 );
insert into products values (88203, 'Screwdriver', 'Robertson', 10.59, 6 );
insert into products values (88206, 'Screwdriver', 'Robertson', 11.99, 7 );
insert into products values (88209, 'Screwdriver', 'Robertson', 12.49, 8 );
insert into products values (88212, 'Screwdriver', 'Robertson', 13.99, 9 );

-- HOME&ESSENTIALS	  -- upc,  product_name, size,  msrp, brand_id
insert into products values (88301, 'Dish Soap', 'Small', 6.99, 13 );
insert into products values (88302, 'Dish Soap', 'Large', 14.99, 13 );			-- brand_id 13 = dawn
insert into products values (88303, 'Dish Soap', 'Small', 7.49, 16 );			-- brand_id 16 = mr.clean
insert into products values (88304, 'Dish Soap', 'Large', 15.49, 16 );

-- SPORTS&RECREATION	--upc,	product_name   ,size, msrp,	brand_id
insert into products values (88401, 'Hockey Skates', 9, 69.99, 17 );
insert into products values (88403, 'Hockey Skates', 9, 54.99, 18 );		-- brand_id 17/18 = reebok/ccm
insert into products values (88402, 'Hockey Skates', 10, 69.99, 17 );		-- brand_id 21 = schwiin
insert into products values (88404, 'Hockey Skates', 10, 69.99, 18 );
insert into products values (88410, 'Bikes', 28, 129.99, 18 );
insert into products values (88413, 'Bikes', 28, 149.99, 21 );
insert into products values (88411, 'Bikes', 29, 169.99, 18 );
insert into products values (88414, 'Bikes', 29, 209.99, 21 );
insert into products values (88412, 'Bikes', 31, 189.99, 18 );
insert into products values (88415, 'Bikes', 31, 249.99, 21 );

-- SEASONAL				--upc,	product_name   ,size, msrp,	brand_id
insert into products values (88501, 'Lawn Mower', 'Small', 299.99, 23 );
insert into products values (88502, 'Lawn Mower', 'Medium', 399.99, 23 );		-- brand_id 21 = yardworks
insert into products values (88503, 'Lawn Mower', 'Large', 429.99, 23  );



-- automotive stock

insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88119, 1, 5, 4, 224.34);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88113, 1, 4, 7, 217.43);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88105, 1, 1, 4, 265.1);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88102, 1, 4, 0, 204.59);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88101, 1, 2, 1, 266.82);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88101, 1, 1, 0, 211.36);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88104, 2, 5, 8, 216.25);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88116, 2, 1, 6, 229.59);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88113, 1, 5, 3, 215.22);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88121, 2, 4, 8, 229.85);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88112, 2, 5, 5, 166.54);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88118, 2, 3, 8, 175.76);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88114, 2, 1, 2, 163.5);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88110, 2, 3, 9, 226.73);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88105, 1, 2, 8, 163.55);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88105, 1, 3, 2, 234.72);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88117, 1, 1, 8, 173.12);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88103, 2, 4, 6, 207.14);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88107, 2, 2, 10, 230.28);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88111, 2, 4, 9, 208.51);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88106, 1, 3, 7, 194.58);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88113, 1, 2, 5, 165.54);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88119, 2, 2, 6, 179.45);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88106, 2, 5, 4, 168.39);

-- tools
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88203, 1, 4, 7, 17.62);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88203, 1, 5, 11, 10.05);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88202, 1, 5, 11, 5.97);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88201, 1, 2, 2, 10.03);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88201, 1, 3, 2, 13.07);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88201, 1, 5, 4, 13.06);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88206, 2, 5, 5, 13.27);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88204, 2, 1, 7, 6.44);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88204, 2, 3, 11, 15.5);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88205, 2, 4, 12, 11.19);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88209, 3, 4, 1, 16.13);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88208, 3, 3, 9, 8.0);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88207, 3, 1, 0, 6.1);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88207, 3, 3, 10, 13.48);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88207, 3, 4, 5, 11.4);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88207, 3, 5, 3, 14.18);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88212, 4, 4, 12, 4.43);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88211, 4, 4, 10, 17.48);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88212, 4, 1, 12, 5.45);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88212, 4, 5, 9, 6.92);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88211, 4, 2, 12, 17.66);


-- cleaning products
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88303, 3, 5, 19, 6.9);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88303, 3, 1, 15, 16.25);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88302, 3, 2, 29, 14.98);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88302, 4, 3, 3, 12.46);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88301, 4, 4, 13, 14.59);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88304, 3, 3, 6, 17.86);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88304, 3, 5, 3, 5.11);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88304, 3, 1, 25, 15.44);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88303, 3, 2, 10, 12.84);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88304, 3, 4, 1, 9.82);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88302, 4, 5, 26, 17.71);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88303, 4, 4, 15, 11.44);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88303, 3, 4, 30, 8.88);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88301, 3, 3, 8, 6.29);


-- CCM skates
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88402, 3, 1, 0, 72.66);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88402, 3, 3, 2, 65.5);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88401, 3, 2, 5, 72.48);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88401, 3, 5, 5, 68.6);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88402, 3, 2, 3, 71.73);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88401, 3, 4, 3, 74.09);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88401, 3, 3, 3, 74.98);

-- other skates
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88404, 2, 4, 0, 67.96);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88403, 2, 2, 4, 71.24);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88404, 2, 1, 1, 74.18);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88404, 2, 3, 5, 71.19);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88404, 2, 5, 5, 74.93);

-- CCM bikes
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88412, 3, 5, 2, 173.58);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88411, 3, 3, 2, 178.69);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88412, 3, 1, 0, 197.9);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88412, 3, 2, 4, 207.05);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88412, 3, 4, 5, 198.81);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88412, 3, 3, 1, 213.69);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88411, 3, 4, 5, 216.92);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88411, 3, 1, 2, 126.01);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88410, 3, 5, 3, 139.73);

-- other bikes
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88413, 2, 4, 2, 224.8);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88414, 2, 2, 2, 243.51);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88414, 2, 3, 4, 196.23);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88414, 2, 1, 1, 247.0);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88415, 2, 5, 2, 209.04);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88415, 2, 1, 3, 157.4);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88413, 2, 2, 1, 141.23);

-- lawnmowers
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88501, 1, 1, 0, 317.59);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88502, 1, 4, 0, 296.3);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 1, 3, 3, 371.24);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 1, 4, 3, 435.15);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 1, 2, 3, 407.13);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 1, 1, 1, 440.93);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88501, 1, 5, 0, 380.95);

insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 4, 2, 1, 311.33);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 4, 1, 0, 357.86);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88501, 4, 3, 2, 334.42);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88501, 4, 5, 1, 401.77);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88502, 4, 5, 3, 444.23);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 4, 4, 5, 384.83);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88502, 4, 1, 4, 284.38);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88501, 4, 1, 2, 290.81);
insert into stock (product_upc, vendor_id, store_id, quantity, price) values (88503, 4, 3, 0, 277.05);


insert into customers (id, user_id, address_id) values (id, 1, 1); -- using address numbers 1 - 10
insert into customers (id, user_id, address_id) values (id, 2, 2);
insert into customers (id, user_id, address_id) values (id, 3, 3);
insert into customers (id, user_id, address_id) values (id, 4, 4);




