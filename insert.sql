-- CANADIAN TIRE DATA RELATIONS --

								-- dept_name, 
insert into department values ('Automotive');
insert into department values ('Tools & Hardware');
insert into department values ('Home & Essentials');
insert into department values ('Sports & Recreation');
insert into department values ('Seasonal');
						 
insert into brand values ('Bridgestone'); -- start of auto brands
insert into brand values ('Michelin');
insert into brand values ('Motomaster');	
insert into brand values ('Castrol');	
insert into brand values ('Goodyear'); 	
insert into brand values ('MasterCraft');	-- staret of tools & hardware brands
insert into brand values ('Maximum');	
insert into brand values ('Preimer');	
insert into brand values ('Stanley');	
insert into brand values ('DeWalt');
insert into brand values ('RubberMaid');	-- start of home & essential brands
insert into brand values ('Swifter');
insert into brand values ('Cuisinart');	
insert into brand values ('Dyson');	
insert into brand values ('KitchenAid');	
insert into brand values ('Mr.Clean'); 	
insert into brand values ('Reebok');		-- start of sport & rec brands
insert into brand values ('CMM');
insert into brand values ('Coleman');	
insert into brand values ('Nike');
insert into brand values ('Schwinn');
insert into brand values ('Easton');	
insert into brand values ('YardWorks'); 	-- start of seasonal brands
insert into brand values ('LEGO');
insert into brand values ('NOMA');
insert into brand values ('National');


insert into category values ('Tires & Wheels'); 		-- start auto categories
insert into category values ('Car Parts');
insert into category values ('Security');
insert into category values ('Oils & Fluids'); 
insert into category values ('Electrical');				-- start tools & hardware categories
insert into category values ('Hand Tools');
insert into category values ('Power Tools');
insert into category values ('Paints & Stains'); 
insert into category values ('Plumbing'); 
insert into category values ('Bathroom'); 				-- start home & essentials categories
insert into category values ('Cleaning Supplies'); 
insert into category values ('Electronics'); 
insert into category values ('Furniture'); 
insert into category values ('Kitchen'); 
insert into category values ('Bikes & Accessories'); 	-- start sport & recreation categories
insert into category values ('Camping'); 
insert into category values ('Fishing'); 
insert into category values ('Hunting'); 
insert into category values ('Hockey'); 
insert into category values ('Toys'); 				-- start seasonal categories	
insert into category values ('Lawn & Garden'); 
insert into category values ('Outdoor Living'); 
insert into category values ('Patio Furniture'); 
insert into category values ('Sheds & Storage'); 


						-- dept_name,		 category, 			type
insert into product values ('Automotive', 'Tires & Wheels', 'Winter' );
insert into product values ('Automotive', 'Tires & Wheels', 'Summer' );
insert into product values ('Automotive', 'Tires & Wheels', 'AllSeason' );
insert into product values ('Automotive', 'Car Parts', 'Signal Light' );
insert into product values ('Automotive', 'Car Parts', 'Break Light' );
insert into product values ('Automotive', 'Car Parts', 'Head Light' );
insert into product values ('Automotive', 'Security', ' Car Alarms' );
insert into product values ('Automotive', 'Oils & Fluids', 'Oil Regular' );
insert into product values ('Automotive', 'Oils & Fluids', 'Oil Premium' );
insert into product values ('Automotive', 'Oils & Fluids', 'Transmission Fluid' );

insert into product values ('Tools & Hardware', 'Electrical', 'Wires' );
insert into product values ('Tools & Hardware', 'Hand Tools', 'Screw Driver' );
insert into product values ('Tools & Hardware', 'Power Tools', 'Band Saw' );
insert into product values ('Tools & Hardware', 'Paints & Stains', 'Primer' );
insert into product values ('Tools & Hardware', 'Plumbing', 'Pipes' );

insert into product values ('Home & Essentials', 'Bathroom', 'Plunger' );
insert into product values ('Home & Essentials', 'Cleaning Supplies', 'Mop' );
insert into product values ('Home & Essentials', 'Electronics', 'TV' );
insert into product values ('Home & Essentials', 'Furniture', 'Desk' );

insert into product values ('Sports & Recreation', 'Bikes & Accessories' );
insert into product values ('Sports & Recreation', 'Camping' );
insert into product values ('Sports & Recreation', 'Fishing' );
insert into product values ('Sports & Recreation', 'Hunting' );
insert into product values ('Sports & Recreation', 'Hockey' );

insert into product values ('Seasonal', 'Toys', 'Building Blocks' );
insert into product values ('Seasonal', 'Lawn & Garden',  'Mower'  );
insert into product values ('Seasonal', 'Outdoor Living', 'Hammok'  );
insert into product values ('Seasonal', 'Patio Furniture', 'Gravity Chair' );
insert into product values ('Seasonal', 'Sheds & Storage', 'Small Shed' );







