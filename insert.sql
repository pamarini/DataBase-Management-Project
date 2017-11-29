-- CANADIAN TIRE DATA RELATIONS --
USE cs3413_final;

insert into users values (id,'user@user.com', 'password', 'user');
insert into users values (id,'manager@manager.com', 'password', 'manager');
insert into users values (id,'vendor@vendor.com', 'password', 'vendor');

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
insert into products values (88120, 'All Season Tires', 18, 259.99, 5 );

		-- TOOLS&HARDWARE	 -- upc,  product_name, size,  msrp, brand_id
insert into products values (88201, 'Screwdriver', 'Slot', 4.99, 6 );		-- brand_id 6-9 = all tool brands
insert into products values (88202, 'Screwdriver', 'Slot', 5.49, 7 );
insert into products values (88203, 'Screwdriver', 'Slot', 6.99, 8 );
insert into products values (88204, 'Screwdriver', 'Slot', 7.99, 9 );
insert into products values (88205, 'Screwdriver', 'Phillips', 10.99, 6 );
insert into products values (88206, 'Screwdriver', 'Phillips', 11.49, 7 );
insert into products values (88207, 'Screwdriver', 'Phillips', 12.99, 8 );
insert into products values (88208, 'Screwdriver', 'Phillips', 13.99, 9 );
insert into products values (88209, 'Screwdriver', 'Robertson', 10.59, 6 );
insert into products values (88210, 'Screwdriver', 'Robertson', 11.99, 7 );
insert into products values (88211, 'Screwdriver', 'Robertson', 12.49, 8 );
insert into products values (88212, 'Screwdriver', 'Robertson', 13.99, 9 );

	-- HOME&ESSENTIALS	  -- upc,  product_name, size,  msrp, brand_id
insert into products values (88301, 'Dish Soap', 'Small', 6.99, 13 );
insert into products values (88302, 'Dish Soap', 'Large', 14.99, 13 );			-- brand_id 13 = dawn
insert into products values (88303, 'Dish Soap', 'Small', 7.49, 16 );			-- brand_id 16 = mr.clean
insert into products values (88304, 'Dish Soap', 'Large', 15.49, 16 );

	-- SPORTS&RECREATION	--upc,	product_name   ,size, msrp,	brand_id
insert into products values (88401, 'Hockey Skates', 9, 69.99, 17 );
insert into products values (88402, 'Hockey Skates', 9, 54.99, 18 );		-- brand_id 17/18 = reebok/ccm
insert into products values (88403, 'Hockey Skates', 10, 69.99, 17 );		-- brand_id 21 = schwiin
insert into products values (88404, 'Hockey Skates', 10, 69.99, 18 );
insert into products values (88410, 'Bikes', 28, 129.99, 18 );
insert into products values (88411, 'Bikes', 28, 149,99, 21 );
insert into products values (88412, 'Bikes', 29, 169,99, 18 );
insert into products values (88413, 'Bikes', 29, 209,99, 21 );
insert into products values (88414, 'Bikes', 31, 189,99, 18 );
insert into products values (88415, 'Bikes', 31, 249,99, 21 );

	-- SEASONAL				--upc,	product_name   ,size, msrp,	brand_id
insert into products values (88501, 'Lawn Mower', 'Small', 299.99, 21 );
insert into products values (88502, 'Lawn Mower', 'Medium', 399.99, 21 );		-- brand_id 21 = yardworks
insert into products values (88503, 'Lawn Mower', 'Large', 429.99, 21  );

						-- id,		name,		address_id
insert into stores values (id, 'TBay North', address_id);
insert into stores values (id, 'TBay South', address_id);		-- using legit address number
insert into stores values (id, 'Nipigon', address_id);
insert into stores values (id, 'Kenora', address_id);
insert into stores values (id, 'Sault Ste. Marie ', address_id);

insert into vendors values (id, 'Sysco');
insert into vendors values (id, 'Cosco');





