use classicmodels;
select * from products;

select productVendor, avg(MSRP)
from products
group by productVendor 
having avg(MSRP) > 100;

select productScale, sum(quantityInStock) as sum_Quantity
from products 
group by productScale
having sum_Quantity > 500;

select productLine, avg(buyPrice) as avg_buyPrice
from products
group by productLine
having avg_buyPrice > 50;

-- Offices by Country: Which countries have more than 3 offices? 

select * from offices;

select country , count(*) as total_individual_country
from offices
group by country
having total_individual_country > 3;

-- Employees by Job Title: Which job titles have more than 5 employees?

select * from employees;

select jobTitle, count(*)
from employees
group by jobTitle 
having count(*) > 5;


-- Customers by Country: Which countries have a total credit limit exceeding $500,000?
select * from customers;




INSERT INTO offices (
    officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory
) VALUES 
    ('1', 'San Francisco', '+1 650 219 4782', '100 Market Street', 'Suite 300', 'CA', 'USA', '94080', 'NA'),
    ('2', 'Boston', '+1 215 837 0825', '1550 Court Place', 'Suite 102', 'MA', 'USA', '02107', 'NA'),
    ('3', 'NYC', '+1 212 555 3000', '523 East 53rd Street', 'apt. 5A', 'NY', 'USA', '10022', 'NA'),
    ('4', 'Paris', '+33 14 723 4404', '43 Rue Jouffroy D\'abbans', NULL, NULL, 'France', '75017', 'EMEA'),
    ('5', 'Tokyo', '+81 33 224 5000', '4-1 Kioicho', NULL, 'Chiyoda-Ku', 'Japan', '102-8578', 'Japan'),
    ('6', 'Sydney', '+61 2 9264 2451', '5-11 Wentworth Avenue', 'Floor #2', NULL, 'Australia', 'NSW 2010', 'APAC'),
    ('7', 'London', '+44 20 7877 2041', '25 Old Broad Street', 'Level 7', NULL, 'UK', 'EC2N 1HN', 'EMEA');

INSERT INTO employees (
    employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle
) VALUES 
    (1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', NULL, 'President'),
    (1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmodelcars.com', '1', 1002, 'VP Sales'),
    (1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmodelcars.com', '1', 1002, 'VP Marketing'),
    (1088, 'Patterson', 'William', 'x4871', 'wpatterson@classicmodelcars.com', '6', 1056, 'Sales Manager (APAC)'),
    (1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', '4', 1056, 'Sale Manager (EMEA)'),
    (1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcars.com', '1', 1056, 'Sales Manager (NA)'),
    (1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmodelcars.com', '1', 1143, 'Sales Rep'),
    (1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmodelcars.com', '1', 1143, 'Sales Rep'),
    (1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmodelcars.com', '2', 1143, 'Sales Rep'),
    (1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmodelcars.com', '2', 1143, 'Sales Rep'),
    (1286, 'Tseng', 'Foon Yue', 'x2248', 'ftseng@classicmodelcars.com', '3', 1143, 'Sales Rep'),
    (1323, 'Vanauf', 'George', 'x4102', 'gvanauf@classicmodelcars.com', '3', 1143, 'Sales Rep'),
    (1337, 'Bondur', 'Loui', 'x6493', 'lbondur@classicmodelcars.com', '4', 1102, 'Sales Rep'),
    (1370, 'Hernandez', 'Gerard', 'x2028', 'ghernande@classicmodelcars.com', '4', 1102, 'Sales Rep'),
    (1401, 'Castillo', 'Pamela', 'x2759', 'pcastillo@classicmodelcars.com', '4', 1102, 'Sales Rep'),
    (1501, 'Bott', 'Larry', 'x2311', 'lbott@classicmodelcars.com', '7', 1102, 'Sales Rep'),
    (1504, 'Jones', 'Barry', 'x102', 'bjones@classicmodelcars.com', '7', 1102, 'Sales Rep'),
    (1611, 'Fixter', 'Andy', 'x101', 'afixter@classicmodelcars.com', '6', 1088, 'Sales Rep'),
    (1612, 'Marsh', 'Peter', 'x102', 'pmarsh@classicmodelcars.com', '6', 1088, 'Sales Rep'),
    (1619, 'King', 'Tom', 'x103', 'tking@classicmodelcars.com', '6', 1088, 'Sales Rep'),
    (1621, 'Nishi', 'Mami', 'x101', 'mnishi@classicmodelcars.com', '5', 1056, 'Sales Rep'),
    (1625, 'Kato', 'Yoshimi', 'x102', 'ykato@classicmodelcars.com', '5', 1621, 'Sales Rep'),
    (1702, 'Gerard', 'Martin', 'x2312', 'mgerard@classicmodelcars.com', '4', 1102, 'Sales Rep');


INSERT INTO customers (
    customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit
) VALUES 
    (103, 'Atelier graphique', 'Schmitt', 'Carine', '40.32.2555', '54, rue Royale', NULL, 'Nantes', NULL, '44000', 'France', 1370, '21000.00'),
    (112, 'Signal Gift Stores', 'King', 'Jean', '7025551838', '8489 Strong St.', NULL, 'Las Vegas', 'NV', '83030', 'USA', 1166, '71800.00'),
    (114, 'Australian Collectors, Co.', 'Ferguson', 'Peter', '03 9520 4555', '636 St Kilda Road', 'Level 3', 'Melbourne', 'Victoria', '3004', 'Australia', 1611, '117300.00'),
    (119, 'La Rochelle Gifts', 'Labrune', 'Janine', '40.67.8555', '67, rue des Cinquante Otages', NULL, 'Nantes', NULL, '44000', 'France', 1370, '118200.00'),
    (121, 'Baane Mini Imports', 'Bergulfsen', 'Jonas', '07-98 9555', 'Erling Skakkes gate 78', NULL, 'Stavern', NULL, '4110', 'Norway', 1504, '81700.00'),
    (124, 'Mini Gifts Distributors Ltd.', 'Nelson', 'Susan', '4155551450', '5677 Strong St.', NULL, 'San Rafael', 'CA', '97562', 'USA', 1165, '210500.00'),
    (125, 'Havel & Zbyszek Co', 'Piestrzeniewicz', 'Zbyszek', '(26) 642-7555', 'ul. Filtrowa 68', NULL, 'Warszawa', NULL, '01-012', 'Poland', NULL, '0.00'),
    (128, 'Blauer See Auto, Co.', 'Keitel', 'Roland', '+49 69 66 90 2555', 'Lyonerstr. 34', NULL, 'Frankfurt', NULL, '60528', 'Germany', 1504, '59700.00'),
    (129, 'Mini Wheels Co.', 'Murphy', 'Julie', '6505555787', '5557 North Pendale Street', NULL, 'San Francisco', 'CA', '94217', 'USA', 1165, '64600.00'),
    (131, 'Land of Toys Inc.', 'Lee', 'Kwai', '2125557818', '897 Long Airport Avenue', NULL, 'NYC', 'NY', '10022', 'USA', 1323, '114900.00'),
    (141, 'Euro+ Shopping Channel', 'Freyre', 'Diego', '(91) 555 94 44', 'C/ Moralzarzal, 86', NULL, 'Madrid', NULL, '28034', 'Spain', 1370, '227600.00'),
    (144, 'Volvo Model Replicas, Co', 'Berglund', 'Christina', '0921-12 3555', 'Berguvsvägen  8', NULL, 'Luleå', NULL, 'S-958 22', 'Sweden', 1504, '53100.00'),
    (145, 'Danish Wholesale Imports', 'Petersen', 'Jytte', '31 12 3555', 'Vinbæltet 34', NULL, 'Kobenhavn', NULL, '1734', 'Denmark', 1401, '83400.00'),
    (146, 'Saveley & Henriot, Co.', 'Saveley', 'Mary', '78.32.5555', '2, rue du Commerce', NULL, 'Lyon', NULL, '69004', 'France', 1337, '123900.00'),
    (148, 'Dragon Souveniers, Ltd.', 'Natividad', 'Eric', '+65 221 7555', 'Bronz Sok.', 'Bronz Apt. 3/6 Tesvikiye', 'Singapore', NULL, '079903', 'Singapore', 1621, '103800.00'),
    (151, 'Muscle Machine Inc', 'Young', 'Jeff', '2125557413', '4092 Furth Circle', 'Suite 400', 'NYC', 'NY', '10022', 'USA', 1286, '138500.00'),
    (157, 'Diecast Classics Inc.', 'Leong', 'Kelvin', '2155551555', '7586 Pompton St.', NULL, 'Allentown', 'PA', '70267', 'USA', 1216, '100600.00'),
    (161, 'Technics Stores Inc.', 'Hashimoto', 'Juri', '6505556809', '9408 Furth Circle', NULL, 'Burlingame', 'CA', '94217', 'USA', 1165, '84600.00'),
    (166, 'Handji Gifts& Co', 'Victorino', 'Wendy', '+65 224 1555', '106 Linden Road Sandown', '2nd Floor', 'Singapore', NULL, '069045', 'Singapore', 1612, '97900.00'),
    (167, 'Herkku Gifts', 'Oeztan', 'Veysel', '+47 2267 3215', 'Brehmen St. 121', 'PR 334 Sentrum', 'Bergen', NULL, 'N 5804', 'Norway', 1504, '96800.00'),
    (168, 'American Souvenirs Inc', 'Franco', 'Keith', '2035557845', '149 Spinnaker Dr.', 'Suite 101', 'New Haven', 'CT', '97823', 'USA', 1286, '0.00'),
    (169, 'Porto Imports Co.', 'de Castro', 'Isabel', '(1) 356-5555', 'Estrada da saúde n. 58', NULL, 'Lisboa', NULL, '1756', 'Portugal', NULL, '0.00'),
    (171, 'Daedalus Designs Imports', 'Rancé', 'Martine', '20.16.1555', '184, chaussée de Tournai', NULL, 'Lille', NULL, '59000', 'France', 1370, '82900.00'),
    (172, 'La Corne D\'abondance, Co.', 'Bertrand', 'Marie', '(1) 42.34.2555', '265, boulevard Charonne', NULL, 'Paris', NULL, '75012', 'France', 1337, '84300.00'),
    (173, 'Cambridge Collectables Co.', 'Tseng', 'Jerry', '6175555555', '4658 Baden Av.', NULL, 'Cambridge', 'MA', '51247', 'USA', 1188, '43400.00'),
    (175, 'Gift Depot Inc.', 'King', 'Julie', '2035552570', '25593 South Bay Ln.', NULL, 'Bridgewater', 'CT', '97562', 'USA', 1323, '84300.00'),
    (177, 'Osaka Souveniers Co.', 'Kentary', 'Mory', '+81 06 6342 5555', '1-6-20 Dojima', NULL, 'Kita-ku', 'Osaka', '530-0003', 'Japan', 1621, '81200.00'),
    (181, 'Vitachrome Inc.', 'Frick', 'Michael', '2125551500', '2678 Kingston Rd.', 'Suite 101', 'NYC', 'NY', '10022', 'USA', 1286, '76400.00'),
    (186, 'Toys of Finland, Co.', 'Karttunen', 'Matti', '90-224 8555', 'Keskuskatu 45', NULL, 'Helsinki', NULL, '21240', 'Finland', 1501, '96500.00'),
    (187, 'AV Stores, Co.', 'Ashworth', 'Rachel', '(171) 555-1555', 'Fauntleroy Circus', NULL, 'Manchester', NULL, 'EC2 5NT', 'UK', 1501, '136800.00'),
    (189, 'Clover Collections, Co.', 'Cassidy', 'Dean', '+353 1862 1555', '25 Maiden Lane', 'Floor No. 4', 'Dublin', NULL, '2', 'Ireland', 1504, '69400.00'),
    (198, 'Auto-Moto Classics Inc.', 'Taylor', 'Leslie', '6175558428', '16780 Pompton St.', NULL, 'Brickhaven', 'MA', '58339', 'USA', 1216, '23000.00'),
    (201, 'UK Collectables, Ltd.', 'Devon', 'Elizabeth', '(171) 555-2282', '12, Berkeley Gardens Blvd', NULL, 'Liverpool', NULL, 'WX1 6LT', 'UK', 1501, '92700.00'),
    (202, 'Canadian Gift Exchange Network', 'Tamuri', 'Yoshi', '(604) 555-3392', '1900 Oak St.', NULL, 'Vancouver', 'BC', 'V3F 2K1', 'Canada', 1323, '90300.00'),
    (204, 'Online Mini Collectables', 'Barajas', 'Miguel', '6175557555', '7635 Spinnaker Dr.', NULL, 'Brickhaven', 'MA', '58339', 'USA', 1188, '68700.00'),
    (205, 'Toys4GrownUps.com', 'Young', 'Julie', '6265557265', '78934 Hillside Dr.', NULL, 'Pasadena', 'CA', '90003', 'USA', 1166, '90700.00'),
    (206, 'Asian Shopping Network, Co', 'Walker', 'Brydey', '+612 9411 1555', 'Suntec Tower Three', '8 Temasek', 'Singapore', NULL, '038988', 'Singapore', NULL, '0.00'),
    (209, 'Mini Caravy', 'Citeaux', 'Frédérique', '88.60.1555', '24, place Kléber', NULL, 'Strasbourg', NULL, '67000', 'France', 1370, '53800.00'),
    (211, 'King Kong Collectables, Co.', 'Gao', 'Mike', '+852 2251 1555', 'Bank of China Tower', '1 Garden Road', 'Central Hong Kong', NULL, NULL, 'Hong Kong', 1621, '58600.00'),
    (216, 'Enaco Distributors', 'Saavedra', 'Eduardo', '(93) 203 4555', 'Rambla de Cataluña, 23', NULL, 'Barcelona', NULL, '08022', 'Spain', 1702, '60300.00'),
    (219, 'Boards & Toys Co.', 'Young', 'Mary', '3105552373', '4097 Douglas Av.', NULL, 'Glendale', 'CA', '92561', 'USA', 1166, '11000.00'),
    (223, 'Natürlich Autos', 'Kloss', 'Horst', '0372-555188', 'Taucherstraße 10', NULL, 'Cunewalde', NULL, '01307', 'Germany', NULL, '0.00'),
    (227, 'Heintze Collectables', 'Ibsen', 'Palle', '86 21 3555', 'Smagsloget 45', NULL, 'Århus', NULL, '8200', 'Denmark', 1401, '120800.00'),
    (233, 'Québec Home Shopping Network', 'Fresnière', 'Jean', '(514) 555-8054', '43 rue St. Laurent', NULL, 'Montréal', 'Québec', 'H1J 1C3', 'Canada', 1286, '48700.00'),
    (237, 'ANG Resellers', 'Camino', 'Alejandra', '(91) 745 6555', 'Gran Vía, 1', NULL, 'Madrid', NULL, '28001', 'Spain', NULL, '0.00'),
    (239, 'Collectable Mini Designs Co.', 'Thompson', 'Valarie', '7605558146', '361 Furth Circle', NULL, 'San Diego', 'CA', '91217', 'USA', 1166, '105000.00'),
    (240, 'giftsbymail.co.uk', 'Bennett', 'Helen', '(198) 555-8888', 'Garden House', 'Crowther Way 23', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 1501, '93900.00'),
    (242, 'Alpha Cognac', 'Roulet', 'Annette', '61.77.6555', '1 rue Alsace-Lorraine', NULL, 'Toulouse', NULL, '31000', 'France', 1370, '61100.00'),
    (247, 'Messner Shopping Network', 'Messner', 'Renate', '069-0555984', 'Magazinweg 7', NULL, 'Frankfurt', NULL, '60528', 'Germany', NULL, '0.00'),
    (249, 'Amica Models & Co.', 'Accorti', 'Paolo', '011-4988555', 'Via Monte Bianco 34', NULL, 'Torino', NULL, '10100', 'Italy', 1401, '113000.00'),
    (250, 'Lyon Souveniers', 'Da Silva', 'Daniel', '+33 1 46 62 7555', '27 rue du Colonel Pierre Avia', NULL, 'Paris', NULL, '75508', 'France', 1337, '68100.00'),
    (256, 'Auto Associés & Cie.', 'Tonini', 'Daniel', '30.59.8555', '67, avenue de l\'Europe', NULL, 'Versailles', NULL, '78000', 'France', 1370, '77900.00'),
    (259, 'Toms Spezialitäten, Ltd', 'Pfalzheim', 'Henriette', '0221-5554327', 'Mehrheimerstr. 369', NULL, 'Köln', NULL, '50739', 'Germany', 1504, '120400.00'),
    (260, 'Royal Canadian Collectables, Ltd.', 'Lincoln', 'Elizabeth', '(604) 555-4555', '23 Tsawassen Blvd.', NULL, 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 1323, '89600.00'),
    (273, 'Franken Gifts, Co', 'Franken', 'Peter', '089-0877555', 'Berliner Platz 43', NULL, 'München', NULL, '80805', 'Germany', NULL, '0.00'),
    (276, 'Anna\'s Decorations, Ltd', 'O\'Hara', 'Anna', '02 9936 8555', '201 Miller Street', 'Level 15', 'North Sydney', 'NSW', '2060', 'Australia', 1611, '107800.00'),
    (278, 'Rovelli Gifts', 'Rovelli', 'Giovanni', '035-640555', 'Via Ludovico il Moro 22', NULL, 'Bergamo', NULL, '24100', 'Italy', 1401, '119600.00'),
    (282, 'Souveniers And Things Co.', 'Huxley', 'Adrian', '+61 2 9495 8555', 'Monitor Money Building', '815 Pacific Hwy', 'Chatswood', 'NSW', '2067', 'Australia', 1611, '93300.00'),
    (286, 'Marta\'s Replicas Co.', 'Hernandez', 'Marta', '6175558555', '39323 Spinnaker Dr.', NULL, 'Cambridge', 'MA', '51247', 'USA', 1216, '123700.00'),
    (293, 'BG&E Collectables', 'Harrison', 'Ed', '+41 26 425 50 01', 'Rte des Arsenaux 41', NULL, 'Fribourg', NULL, '1700', 'Switzerland', NULL, '0.00'),
    (298, 'Vida Sport, Ltd', 'Holz', 'Mihael', '0897-034555', 'Grenzacherweg 237', NULL, 'Genève', NULL, '1203', 'Switzerland', 1702, '141300.00'),
    (299, 'Norway Gifts By Mail, Co.', 'Klaeboe', 'Jan', '+47 2212 1555', 'Drammensveien 126A', 'PB 211 Sentrum', 'Oslo', NULL, 'N 0106', 'Norway', 1504, '95100.00'),
    (303, 'Schuyler Imports', 'Schuyler', 'Bradley', '+31 20 491 9555', 'Kingsfordweg 151', NULL, 'Amsterdam', NULL, '1043 GR', 'Netherlands', NULL, '0.00'),
    (307, 'Der Hund Imports', 'Andersen', 'Mel', '030-0074555', 'Obere Str. 57', NULL, 'Berlin', NULL, '12209', 'Germany', NULL, '0.00'),
    (311, 'Oulu Toy Supplies, Inc.', 'Koskitalo', 'Pirkko', '981-443655', 'Torikatu 38', NULL, 'Oulu', NULL, '90110', 'Finland', 1501, '90500.00'),
    (314, 'Petit Auto', 'Dewey', 'Catherine', '(02) 5554 67', 'Rue Joseph-Bens 532', NULL, 'Bruxelles', NULL, 'B-1180', 'Belgium', 1401, '79900.00'),
    (319, 'Mini Classics', 'Frick', 'Steve', '9145554562', '3758 North Pendale Street', NULL, 'White Plains', 'NY', '24067', 'USA', 1323, '102700.00'),
    (320, 'Mini Creations Ltd.', 'Huang', 'Wing', '5085559555', '4575 Hillside Dr.', NULL, 'New Bedford', 'MA', '50553', 'USA', 1188, '94500.00'),
    (321, 'Corporate Gift Ideas Co.', 'Brown', 'Julie', '6505551386', '7734 Strong St.', NULL, 'San Francisco', 'CA', '94217', 'USA', 1165, '105000.00'),
    (323, 'Down Under Souveniers, Inc', 'Graham', 'Mike', '+64 9 312 5555', '162-164 Grafton Road', 'Level 2', 'Auckland', NULL, NULL, 'New Zealand', 1612, '88000.00'),
    (324, 'Stylish Desk Decors, Co.', 'Brown', 'Ann', '(171) 555-0297', '35 King George', NULL, 'London', NULL, 'WX3 6FW', 'UK', 1501, '77000.00'),
    (328, 'Tekni Collectables Inc.', 'Brown', 'William', '2015559350', '7476 Moss Rd.', NULL, 'Newark', 'NJ', '94019', 'USA', 1323, '43000.00'),
    (333, 'Australian Gift Network, Co', 'Calaghan', 'Ben', '61-7-3844-6555', '31 Duncan St. West End', NULL, 'South Brisbane', 'Queensland', '4101', 'Australia', 1611, '51600.00'),
    (334, 'Suominen Souveniers', 'Suominen', 'Kalle', '+358 9 8045 555', 'Software Engineering Center', 'SEC Oy', 'Espoo', NULL, 'FIN-02271', 'Finland', 1501, '98800.00'),
    (335, 'Cramer Spezialitäten, Ltd', 'Cramer', 'Philip', '0555-09555', 'Maubelstr. 90', NULL, 'Brandenburg', NULL, '14776', 'Germany', NULL, '0.00'),
    (339, 'Classic Gift Ideas, Inc', 'Cervantes', 'Francisca', '2155554695', '782 First Street', NULL, 'Philadelphia', 'PA', '71270', 'USA', 1188, '81100.00'),
    (344, 'CAF Imports', 'Fernandez', 'Jesus', '+34 913 728 555', 'Merchants House', '27-30 Merchant\'s Quay', 'Madrid', NULL, '28023', 'Spain', 1702, '59600.00'),
    (347, 'Men \'R\' US Retailers, Ltd.', 'Chandler', 'Brian', '2155554369', '6047 Douglas Av.', NULL, 'Los Angeles', 'CA', '91003', 'USA', 1166, '57700.00'),
    (348, 'Asian Treasures, Inc.', 'McKenna', 'Patricia', '2967 555', '8 Johnstown Road', NULL, 'Cork', 'Co. Cork', NULL, 'Ireland', NULL, '0.00'),
    (350, 'Marseille Mini Autos', 'Lebihan', 'Laurence', '91.24.4555', '12, rue des Bouchers', NULL, 'Marseille', NULL, '13008', 'France', 1337, '65000.00'),
    (353, 'Reims Collectables', 'Henriot', 'Paul', '26.47.1555', '59 rue de l\'Abbaye', NULL, 'Reims', NULL, '51100', 'France', 1337, '81100.00'),
    (356, 'SAR Distributors, Co', 'Kuger', 'Armand', '+27 21 550 3555', '1250 Pretorius Street', NULL, 'Hatfield', 'Pretoria', '0028', 'South Africa', NULL, '0.00'),
    (357, 'GiftsForHim.com', 'MacKinlay', 'Wales', '64-9-3763555', '199 Great North Road', NULL, 'Auckland', NULL, NULL, 'New Zealand', 1612, '77700.00'),
    (361, 'Kommission Auto', 'Josephs', 'Karin', '0251-555259', 'Luisenstr. 48', NULL, 'Münster', NULL, '44087', 'Germany', NULL, '0.00'),
    (362, 'Gifts4AllAges.com', 'Yoshido', 'Juri', '6175559555', '8616 Spinnaker Dr.', NULL, 'Boston', 'MA', '51003', 'USA', 1216, '41900.00'),
    (363, 'Online Diecast Creations Co.', 'Young', 'Dorothy', '6035558647', '2304 Long Airport Avenue', NULL, 'Nashua', 'NH', '62005', 'USA', 1216, '114200.00'),
    (369, 'Lisboa Souveniers, Inc', 'Rodriguez', 'Lino', '(1) 354-2555', 'Jardim das rosas n. 32', NULL, 'Lisboa', NULL, '1675', 'Portugal', NULL, '0.00'),
    (376, 'Precious Collectables', 'Urs', 'Braun', '0452-076555', 'Hauptstr. 29', NULL, 'Bern', NULL, '3012', 'Switzerland', 1702, '0.00'),
    (379, 'Collectables For Less Inc.', 'Nelson', 'Allen', '6175558555', '7825 Douglas Av.', NULL, 'Brickhaven', 'MA', '58339', 'USA', 1188, '70700.00'),
    (381, 'Royale Belge', 'Cartrain', 'Pascale', '(071) 23 67 2555', 'Boulevard Tirou, 255', NULL, 'Charleroi', NULL, 'B-6000', 'Belgium', 1401, '23500.00'),
    (382, 'Salzburg Collectables', 'Pipps', 'Georg', '6562-9555', 'Geislweg 14', NULL, 'Salzburg', NULL, '5020', 'Austria', 1401, '71700.00'),
    (385, 'Cruz & Sons Co.', 'Cruz', 'Arnold', '+63 2 555 3587', '15 McCallum Street', 'NatWest Center #13-03', 'Makati City', NULL, '1227 MM', 'Philippines', 1621, '81500.00'),
    (386, 'L\'ordine Souveniers', 'Moroni', 'Maurizio', '0522-556555', 'Strada Provinciale 124', NULL, 'Reggio Emilia', NULL, '42100', 'Italy', 1401, '121400.00'),
    (398, 'Tokyo Collectables, Ltd', 'Shimamura', 'Akiko', '+81 3 3584 0555', '2-2-8 Roppongi', NULL, 'Minato-ku', 'Tokyo', '106-0032', 'Japan', 1621, '94400.00'),
    (406, 'Auto Canal+ Petit', 'Perrier', 'Dominique', '(1) 47.55.6555', '25, rue Lauriston', NULL, 'Paris', NULL, '75016', 'France', 1337, '95000.00'),
    (409, 'Stuttgart Collectable Exchange', 'Müller', 'Rita', '0711-555361', 'Adenauerallee 900', NULL, 'Stuttgart', NULL, '70563', 'Germany', NULL, '0.00'),
    (412, 'Extreme Desk Decorations, Ltd', 'McRoy', 'Sarah', '04 499 9555', '101 Lambton Quay', 'Level 11', 'Wellington', NULL, NULL, 'New Zealand', 1612, '86800.00'),
    (415, 'Bavarian Collectables Imports, Co.', 'Donnermeyer', 'Michael', '+49 89 61 08 9555', 'Hansastr. 15', NULL, 'Munich', NULL, '80686', 'Germany', 1504, '77000.00'),
    (424, 'Classic Legends Inc.', 'Hernandez', 'Maria', '2125558493', '5905 Pompton St.', 'Suite 750', 'NYC', 'NY', '10022', 'USA', 1286, '67500.00'),
    (443, 'Feuer Online Stores, Inc', 'Feuer', 'Alexander', '0342-555176', 'Heerstr. 22', NULL, 'Leipzig', NULL, '04179', 'Germany', NULL, '0.00'),
    (447, 'Gift Ideas Corp.', 'Lewis', 'Dan', '2035554407', '2440 Pompton St.', NULL, 'Glendale', 'CT', '97561', 'USA', 1323, '49700.00'),
    (448, 'Scandinavian Gift Ideas', 'Larsson', 'Martha', '0695-34 6555', 'Åkergatan 24', NULL, 'Bräcke', NULL, 'S-844 67', 'Sweden', 1504, '116400.00'),
    (450, 'The Sharp Gifts Warehouse', 'Frick', 'Sue', '4085553659', '3086 Ingle Ln.', NULL, 'San Jose', 'CA', '94217', 'USA', 1165, '77600.00'),
    (452, 'Mini Auto Werke', 'Mendel', 'Roland', '7675-3555', 'Kirchgasse 6', NULL, 'Graz', NULL, '8010', 'Austria', 1401, '45300.00'),
    (455, 'Super Scale Inc.', 'Murphy', 'Leslie', '2035559545', '567 North Pendale Street', NULL, 'New Haven', 'CT', '97823', 'USA', 1286, '95400.00'),
    (456, 'Microscale Inc.', 'Choi', 'Yu', '2125551957', '5290 North Pendale Street', 'Suite 200', 'NYC', 'NY', '10022', 'USA', 1286, '39800.00'),
    (458, 'Corrida Auto Replicas, Ltd', 'Sommer', 'Martín', '(91) 555 22 82', 'C/ Araquil, 67', NULL, 'Madrid', NULL, '28023', 'Spain', 1702, '104600.00'),
    (459, 'Warburg Exchange', 'Ottlieb', 'Sven', '0241-039123', 'Walserweg 21', NULL, 'Aachen', NULL, '52066', 'Germany', NULL, '0.00'),
    (462, 'FunGiftIdeas.com', 'Benitez', 'Violeta', '5085552555', '1785 First Street', NULL, 'New Bedford', 'MA', '50553', 'USA', 1216, '85800.00'),
    (465, 'Anton Designs, Ltd.', 'Anton', 'Carmen', '+34 913 728555', 'c/ Gobelas, 19-1 Urb. La Florida', NULL, 'Madrid', NULL, '28023', 'Spain', NULL, '0.00'),
    (471, 'Australian Collectables, Ltd', 'Clenahan', 'Sean', '61-9-3844-6555', '7 Allen Street', NULL, 'Glen Waverly', 'Victoria', '3150', 'Australia', 1611, '60300.00'),
    (473, 'Frau da Collezione', 'Ricotti', 'Franco', '+39 022515555', '20093 Cologno Monzese', 'Alessandro Volta 16', 'Milan', NULL, NULL, 'Italy', 1401, '34800.00'),
    (475, 'West Coast Collectables Co.', 'Thompson', 'Steve', '3105553722', '3675 Furth Circle', NULL, 'Burbank', 'CA', '94019', 'USA', 1166, '55400.00'),
    (477, 'Mit Vergnügen & Co.', 'Moos', 'Hanna', '0621-08555', 'Forsterstr. 57', NULL, 'Mannheim', NULL, '68306', 'Germany', NULL, '0.00'),
    (480, 'Kremlin Collectables, Co.', 'Semenov', 'Alexander', '+7 812 293 0521', '2 Pobedy Square', NULL, 'Saint Petersburg', NULL, '196143', 'Russia', NULL, '0.00'),
    (481, 'Raanan Stores, Inc', 'Altagar,G M', 'Raanan', '+972 9 959 8555', '3 Hagalim Blv.', NULL, 'Herzlia', NULL, '47625', 'Israel', NULL, '0.00'),
    (484, 'Iberia Gift Imports, Corp.', 'Roel', 'José Pedro', '(95) 555 82 82', 'C/ Romero, 33', NULL, 'Sevilla', NULL, '41101', 'Spain', 1702, '65700.00'),
    (486, 'Motor Mint Distributors Inc.', 'Salazar', 'Rosa', '2155559857', '11328 Douglas Av.', NULL, 'Philadelphia', 'PA', '71270', 'USA', 1323, '72600.00'),
    (487, 'Signal Collectibles Ltd.', 'Taylor', 'Sue', '4155554312', '2793 Furth Circle', NULL, 'Brisbane', 'CA', '94217', 'USA', 1165, '60300.00'),
    (489, 'Double Decker Gift Stores, Ltd', 'Smith', 'Thomas', '(171) 555-7555', '120 Hanover Sq.', NULL, 'London', NULL, 'WA1 1DP', 'UK', 1501, '43300.00'),
    (495, 'Diecast Collectables', 'Franco', 'Valarie', '6175552555', '6251 Ingle Ln.', NULL, 'Boston', 'MA', '51003', 'USA', 1188, '85100.00'),
    (496, 'Kelly\'s Gift Shop', 'Snowden', 'Tony', '+64 9 5555500', 'Arenales 1938 3\'A\'', NULL, 'Auckland', NULL, NULL, 'New Zealand', 1612, '110000.00');
    
    select * from customers;
    
select country, sum(creditLimit) as totalCreditLimit
from customers
group by country
having totalCreditLimit > 500000;


    

select * from products;

desc orderdetails;
desc orders;
desc products;
desc payments;
desc offices;

select * from customers;
select * from employees;
select * from offices;
select * from orderdetails;
select * from orders;
select * from payments;
select * from productlines;
select * from products;

select * from productlines;
    
-- select `status`, count(orderNumber)
-- from orders
-- group by 'status' 
-- having count(orderNumber) > 100;

SELECT Status, COUNT(*) AS OrderCount
FROM Orders
GROUP BY Status
HAVING COUNT(*) > 100;

select * from orders;

desc orderdetails;



select orderDate, count(*)
from orders
group by orderDate
having count(*) > 10;
    
    
select * from orderdetails;

select * from products;

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) VALUES
(10100, 'S18_1749', 30, '136.00', 3),
(10100, 'S18_2248', 50, '55.09', 2),
(10100, 'S18_4409', 22, '75.46', 4),
(10100, 'S24_3969', 49, '35.29', 1),
(10101, 'S18_2325', 25, '108.06', 4),
(10101, 'S18_2795', 26, '167.06', 1),
(10101, 'S24_1937', 45, '32.53', 3),
(10101, 'S24_2022', 46, '44.35', 2),
(10102, 'S18_1342', 39, '95.55', 2),
(10102, 'S18_1367', 41, '43.13', 1),
(10103, 'S10_1949', 26, '214.30', 11),
(10103, 'S10_4962', 42, '119.67', 4),
(10103, 'S12_1666', 27, '121.64', 8),
(10103, 'S18_1097', 35, '94.50', 10),
(10103, 'S18_2432', 22, '58.34', 2),
(10103, 'S18_2949', 27, '92.19', 12),
(10103, 'S18_2957', 35, '61.84', 14),
(10103, 'S18_3136', 25, '86.92', 13),
(10103, 'S18_3320', 46, '86.31', 16),
(10103, 'S18_4600', 36, '98.07', 5),
(10103, 'S18_4668', 41, '40.75', 9),
(10103, 'S24_2300', 36, '107.34', 1),
(10103, 'S24_4258', 25, '88.62', 15),
(10103, 'S32_1268', 31, '92.46', 3),
(10103, 'S32_3522', 45, '63.35', 7),
(10103, 'S700_2824', 42, '94.07', 6),
(10104, 'S12_3148', 34, '131.44', 1),
(10104, 'S12_4473', 41, '111.39', 9),
(10104, 'S18_2238', 24, '135.90', 8),
(10104, 'S18_2319', 29, '122.73', 12),
(10104, 'S18_3232', 23, '165.95', 13),
(10104, 'S18_4027', 38, '119.20', 3),
(10104, 'S24_1444', 35, '52.02', 6),
(10104, 'S24_2840', 44, '30.41', 10),
(10104, 'S24_4048', 26, '106.45', 5),
(10104, 'S32_2509', 35, '51.95', 11),
(10104, 'S32_3207', 49, '56.55', 4),
(10104, 'S50_1392', 33, '114.59', 7),
(10104, 'S50_1514', 32, '53.31', 2),
(10105, 'S10_4757', 50, '127.84', 2),
(10105, 'S12_1108', 41, '205.72', 15),
(10105, 'S12_3891', 29, '141.88', 14),
(10105, 'S18_3140', 22, '136.59', 11),
(10105, 'S18_3259', 38, '87.73', 13),
(10105, 'S18_4522', 41, '75.48', 10),
(10105, 'S24_2011', 43, '117.97', 9),
(10105, 'S24_3151', 44, '73.46', 4),
(10105, 'S24_3816', 50, '75.47', 1),
(10105, 'S700_1138', 41, '54.00', 5),
(10105, 'S700_1938', 29, '86.61', 12),
(10105, 'S700_2610', 31, '60.72', 3),
(10105, 'S700_3505', 39, '92.16', 6),
(10105, 'S700_3962', 22, '99.31', 7),
(10105, 'S72_3212', 25, '44.77', 8),
(10106, 'S18_1662', 36, '134.04', 12),
(10106, 'S18_2581', 34, '81.10', 2),
(10106, 'S18_3029', 41, '80.86', 18),
(10106, 'S18_3856', 41, '94.22', 17),
(10106, 'S24_1785', 28, '107.23', 4),
(10106, 'S24_2841', 49, '65.77', 13),
(10106, 'S24_3420', 31, '55.89', 14),
(10106, 'S24_3949', 50, '55.96', 11),
(10106, 'S24_4278', 26, '71.00', 3),
(10106, 'S32_4289', 33, '65.35', 5),
(10106, 'S50_1341', 39, '35.78', 6),
(10106, 'S700_1691', 31, '91.34', 7),
(10106, 'S700_2047', 30, '85.09', 16),
(10106, 'S700_2466', 34, '99.72', 9),
(10106, 'S700_2834', 32, '113.90', 1),
(10106, 'S700_3167', 44, '76.00', 8),
(10106, 'S700_4002', 48, '70.33', 10),
(10106, 'S72_1253', 48, '43.70', 15),
(10107, 'S10_1678', 30, '81.35', 2),
(10107, 'S10_2016', 39, '105.86', 5),
(10107, 'S10_4698', 27, '172.36', 4),
(10107, 'S12_2823', 21, '122.00', 1),
(10107, 'S18_2625', 29, '52.70', 6),
(10107, 'S24_1578', 25, '96.92', 3),
(10107, 'S24_2000', 38, '73.12', 7),
(10107, 'S32_1374', 20, '88.90', 8),
(10108, 'S12_1099', 33, '165.38', 6),
(10108, 'S12_3380', 45, '96.30', 4),
(10108, 'S12_3990', 39, '75.81', 7),
(10108, 'S12_4675', 36, '107.10', 3),
(10108, 'S18_1889', 38, '67.76', 2),
(10108, 'S18_3278', 26, '73.17', 9),
(10108, 'S18_3482', 29, '132.29', 8),
(10108, 'S18_3782', 43, '52.84', 12),
(10108, 'S18_4721', 44, '139.87', 11),
(10108, 'S24_2360', 35, '64.41', 15),
(10108, 'S24_3371', 30, '60.01', 5),
(10108, 'S24_3856', 24, '128.80', 1),
(10108, 'S24_4620', 25, '92.34', 10),
(10108, 'S700_1138', 24, '69.89', 14),
(10108, 'S700_3505', 48, '90.80', 13),
(10109, 'S10_4757', 34, '137.16', 4),
(10109, 'S12_1666', 48, '138.11', 5),
(10109, 'S18_1889', 28, '57.09', 1),
(10109, 'S18_1984', 22, '127.79', 6),
(10109, 'S18_2870', 31, '111.52', 7),
(10109, 'S18_3232', 25, '179.97', 3),
(10109, 'S24_1046', 44, '61.56', 2),
(10109, 'S24_2972', 33, '28.07', 8),
(10109, 'S700_2824', 24, '98.92', 9),
(10110, 'S12_1666', 44, '119.67', 5),
(10110, 'S18_1342', 25, '94.13', 6),
(10110, 'S18_1367', 47, '42.91', 4),
(10110, 'S18_1749', 43, '153.72', 8),
(10110, 'S18_2248', 31, '50.94', 3),
(10110, 'S18_2325', 35, '116.76', 1),
(10110, 'S18_2432', 27, '60.30', 7),
(10110, 'S18_2949', 45, '99.55', 2),
(10110, 'S18_2957', 45, '59.25', 10),
(10110, 'S18_3320', 24, '77.39', 9),
(10110, 'S18_4027', 32, '123.62', 12),
(10110, 'S18_4600', 29, '97.18', 11),
(10110, 'S18_4668', 47, '42.22', 13),
(10110, 'S24_1785', 25, '114.45', 14),
(10110, 'S24_1937', 34, '30.91', 16),
(10110, 'S24_2022', 27, '43.56', 15),
(10110, 'S24_2300', 33, '99.02', 17),
(10110, 'S24_2766', 45, '54.34', 18),
(10110, 'S24_2887', 29, '97.45', 19),
(10111, 'S18_3320', 23, '88.74', 1),
(10111, 'S18_4027', 30, '120.71', 2),
(10111, 'S18_4600', 36, '98.96', 3),
(10111, 'S18_4668', 41, '41.34', 4),
(10111, 'S24_1785', 41, '115.00', 5),
(10111, 'S24_1937', 44, '29.98', 6),
(10111, 'S24_2022', 23, '44.56', 7),
(10111, 'S24_2300', 28, '105.49', 8),
(10111, 'S24_2766', 26, '50.61', 9),
(10111, 'S24_2887', 47, '98.46', 10),
(10112, 'S18_1129', 32, '114.44', 1),
(10112, 'S18_1984', 32, '110.42', 2),
(10112, 'S18_2870', 39, '112.74', 3),
(10112, 'S18_3232', 33, '176.34', 4),
(10112, 'S18_4027', 41, '125.65', 5),
(10112, 'S24_1046', 32, '56.69', 6),
(10112, 'S24_2972', 38, '27.64', 7),
(10112, 'S24_3151', 35, '65.89', 8),
(10112, 'S24_3816', 25, '76.57', 9),
(10112, 'S700_2824', 29, '97.33', 10),
(10113, 'S10_1949', 25, '209.48', 1),
(10113, 'S10_2016', 27, '112.54', 2),
(10113, 'S12_1099', 25, '164.83', 3),
(10113, 'S12_2823', 28, '117.46', 4),
(10113, 'S12_3148', 22, '133.14', 5),
(10113, 'S12_3891', 37, '138.11', 6),
(10113, 'S12_4473', 24, '105.20', 7),
(10113, 'S18_2625', 45, '52.18', 8),
(10113, 'S18_3029', 41, '64.20', 9),
(10113, 'S18_3136', 24, '91.58', 10),
(10113, 'S18_3320', 23, '84.41', 11),
(10113, 'S18_4027', 45, '123.62', 12),
(10113, 'S18_4600', 24, '101.72', 13),
(10113, 'S18_4668', 22, '45.19', 14),
(10113, 'S24_2022', 35, '42.58', 15),
(10113, 'S24_2300', 21, '106.90', 16),
(10113, 'S24_3151', 23, '65.85', 17),
(10113, 'S24_3816', 48, '76.57', 18),
(10113, 'S700_2824', 25, '99.96', 19),
(10114, 'S10_4962', 23, '131.48', 1),
(10114, 'S12_3380', 44, '101.56', 2),
(10114, 'S12_3990', 32, '72.37', 3),
(10114, 'S12_4675', 38, '113.80', 4),
(10114, 'S18_2325', 48, '105.31', 5),
(10114, 'S18_3278', 38, '79.37', 6),
(10114, 'S18_3482', 45, '131.00', 7),
(10114, 'S18_3782', 44, '51.91', 8),
(10114, 'S18_4721', 30, '136.38', 9),
(10114, 'S24_2360', 44, '61.23', 10),
(10114, 'S24_3371', 26, '58.22', 11),
(10114, 'S24_3856', 36, '125.30', 12),
(10114, 'S24_4620', 33, '90.91', 13),
(10114, 'S700_1138', 35, '67.89', 14),
(10114, 'S700_3505', 33, '87.92', 15),
(10114, 'S700_3962', 45, '104.72', 16),
(10114, 'S72_1253', 42, '43.45', 17),
(10115, 'S18_1749', 33, '153.72', 2),
(10115, 'S18_2248', 48, '50.94', 1),
(10115, 'S18_2325', 26, '116.76', 4),
(10115, 'S18_2432', 20, '60.30', 3),
(10115, 'S18_2949', 42, '99.55', 5),
(10115, 'S18_2957', 23, '59.25', 6),
(10115, 'S18_3320', 22, '77.39', 7),
(10115, 'S18_4027', 31, '123.62', 9),
(10115, 'S18_4600', 21, '97.18', 8),
(10115, 'S24_1785', 34, '114.45', 10),
(10115, 'S24_2022', 21, '43.56', 12),
(10115, 'S24_2300', 34, '99.02', 13),
(10115, 'S24_2766', 26, '54.34', 11),
(10115, 'S24_2887', 27, '97.45', 14),
(10115, 'S700_2824', 44, '98.92', 15),
(10116, 'S10_4757', 33, '134.26', 5),
(10116, 'S12_1666', 22, '134.13', 2),
(10116, 'S18_1889', 29, '56.09', 1),
(10116, 'S18_1984', 48, '124.79', 4),
(10116, 'S18_2870', 29, '113.52', 3),
(10116, 'S18_3232', 25, '173.97', 6),
(10116, 'S24_1046', 20, '54.56', 8),
(10116, 'S24_2972', 20, '27.07', 7),
(10116, 'S700_2824', 32, '99.92', 9),
(10117, 'S18_2325', 33, '113.34', 1),
(10117, 'S18_3232', 26, '177.39', 3),
(10117, 'S18_4027', 45, '124.62', 2),
(10117, 'S18_4600', 26, '100.18', 4),
(10117, 'S18_4668', 22, '44.19', 5),
(10117, 'S24_1046', 41, '59.56', 6),
(10117, 'S24_1937', 28, '30.98', 7),
(10117, 'S24_2022', 47, '42.59', 8),
(10117, 'S24_2300', 28, '105.90', 9),
(10117, 'S24_3151', 30, '65.85', 10),
(10117, 'S700_2824', 31, '98.92', 11),
(10118, 'S10_1949', 27, '211.48', 5),
(10118, 'S10_2016', 29, '111.54', 4),
(10118, 'S12_1099', 35, '163.83', 3),
(10118, 'S12_2823', 36, '119.46', 1),
(10118, 'S12_3148', 21, '135.14', 2),
(10118, 'S12_3891', 48, '137.11', 6),
(10118, 'S12_4473', 41, '107.20', 7),
(10118, 'S18_2625', 30, '53.18', 8),
(10118, 'S18_3029', 31, '66.20', 10),
(10118, 'S18_3136', 31, '90.58', 9),
(10118, 'S18_3320', 33, '84.41', 11),
(10118, 'S18_4027', 26, '121.62', 12),
(10118, 'S18_4600', 32, '101.72', 13),
(10118, 'S18_4668', 31, '46.19', 14),
(10118, 'S24_2022', 24, '41.58', 15),
(10118, 'S24_2300', 35, '104.90', 16),
(10118, 'S24_3151', 27, '66.85', 17),
(10118, 'S24_3816', 45, '78.57', 18),
(10118, 'S700_2824', 30, '101.96', 19),
(10119, 'S10_2016', 39, '112.54', 4),
(10119, 'S12_1099', 26, '165.83', 2),
(10119, 'S12_2823', 30, '120.46', 1),
(10119, 'S12_3148', 34, '136.14', 3),
(10119, 'S12_3891', 32, '137.11', 6),
(10119, 'S12_4473', 41, '105.20', 7),
(10119, 'S18_2625', 26, '55.18', 5),
(10119, 'S18_3029', 28, '64.20', 8),
(10119, 'S18_3136', 47, '91.58', 10),
(10119, 'S18_3320', 32, '82.41', 9),
(10119, 'S18_4027', 45, '125.62', 11),
(10119, 'S18_4600', 37, '103.72', 12),
(10119, 'S18_4668', 25, '44.19', 13),
(10119, 'S24_2022', 41, '41.58', 14),
(10119, 'S24_2300', 24, '103.90', 16),
(10119, 'S24_3151', 23, '64.85', 15),
(10119, 'S24_3816', 41, '76.57', 18),
(10119, 'S700_2824', 44, '101.92', 19),
(10120, 'S10_1949', 34, '211.48', 5),
(10120, 'S10_2016', 31, '113.54', 4),
(10120, 'S12_1099', 28, '162.83', 2),
(10120, 'S12_2823', 38, '121.46', 1),
(10120, 'S12_3148', 47, '135.14', 3),
(10120, 'S12_3891', 25, '140.11', 6),
(10120, 'S12_4473', 38, '106.20', 7),
(10120, 'S18_2625', 33, '52.18', 8),
(10120, 'S18_3029', 38, '66.20', 10),
(10120, 'S18_3136', 34, '93.58', 9),
(10120, 'S18_3320', 21, '85.41', 11),
(10120, 'S18_4027', 48, '120.62', 12),
(10120, 'S18_4600', 32, '103.72', 13),
(10120, 'S18_4668', 21, '43.19', 14),
(10120, 'S24_2022', 45, '44.58', 15),
(10120, 'S24_2300', 44, '105.90', 16),
(10120, 'S24_3151', 34, '65.85', 17),
(10120, 'S24_3816', 27, '77.57', 18),
(10120, 'S700_2824', 47, '102.92', 19),
(10121, 'S10_4962', 22, '132.48', 1),
(10121, 'S12_3380', 29, '102.56', 2),
(10121, 'S12_3990', 31, '71.37', 3),
(10121, 'S12_4675', 26, '114.80', 4),
(10121, 'S18_2325', 33, '106.31', 5),
(10121, 'S18_3278', 44, '78.37', 6),
(10121, 'S18_3482', 26, '132.00', 7),
(10121, 'S18_3782', 43, '52.91', 8),
(10121, 'S18_4721', 25, '138.38', 9),
(10121, 'S24_2360', 35, '62.23', 10),
(10121, 'S24_3371', 31, '59.22', 11),
(10121, 'S24_3856', 23, '126.30', 12),
(10121, 'S24_4620', 46, '91.91', 13),
(10121, 'S700_1138', 41, '68.89', 14),
(10121, 'S700_3505', 23, '86.92', 15),
(10121, 'S700_3962', 22, '105.72', 16),
(10121, 'S72_1253', 29, '44.45', 17),
(10122, 'S10_2016', 29, '111.54', 4),
(10122, 'S12_1099', 38, '163.83', 2),
(10122, 'S12_2823', 24, '118.46', 1),
(10122, 'S12_3148', 37, '134.14', 3),
(10122, 'S12_3891', 48, '137.11', 6),
(10122, 'S12_4473', 35, '105.20', 7),
(10122, 'S18_2625', 29, '54.18', 5),
(10122, 'S18_3029', 31, '65.20', 8),
(10122, 'S18_3136', 45, '92.58', 10),
(10122, 'S18_3320', 29, '81.41', 9),
(10122, 'S18_4027', 26, '122.62', 11),
(10122, 'S18_4600', 23, '102.72', 12),
(10122, 'S18_4668', 35, '43.19', 13),
(10122, 'S24_2022', 35, '40.58', 14),
(10122, 'S24_2300', 23, '104.90', 16),
(10122, 'S24_3151', 22, '64.85', 15),
(10122, 'S24_3816', 28, '75.57', 18),
(10122, 'S700_2824', 37, '101.92', 19),
(10123, 'S10_1949', 34, '214.48', 5),
(10123, 'S10_2016', 37, '111.54', 4),
(10123, 'S12_1099', 34, '162.83', 2),
(10123, 'S12_2823', 36, '122.46', 1),
(10123, 'S12_3148', 29, '135.14', 3),
(10123, 'S12_3891', 21, '136.11', 6),
(10123, 'S12_4473', 23, '108.20', 7),
(10123, 'S18_2625', 24, '51.18', 8),
(10123, 'S18_3029', 31, '64.20', 10),
(10123, 'S18_3136', 22, '91.58', 9),
(10123, 'S18_3320', 44, '82.41', 11),
(10123, 'S18_4027', 39, '124.62', 12),
(10123, 'S18_4600', 38, '101.72', 13),
(10123, 'S18_4668', 22, '46.19', 14),
(10123, 'S24_2022', 28, '42.58', 15),
(10123, 'S24_2300', 47, '106.90', 16),
(10123, 'S24_3151', 47, '63.85', 17),
(10123, 'S24_3816', 32, '78.57', 18),
(10123, 'S700_2824', 36, '102.92', 19),
(10124, 'S18_2325', 26, '106.31', 1),
(10124, 'S18_3232', 21, '177.39', 3),
(10124, 'S18_4027', 48, '126.62', 2),
(10124, 'S18_4600', 39, '101.18', 4),
(10124, 'S18_4668', 24, '44.19', 5),
(10124, 'S24_1046', 33, '58.56', 6),
(10124, 'S24_1937', 34, '29.98', 7),
(10124, 'S24_2022', 48, '45.59', 8),
(10124, 'S24_2300', 36, '107.90', 9),
(10124, 'S24_3151', 22, '67.85', 10),
(10124, 'S700_2824', 23, '99.92', 11),
(10125, 'S10_1949', 44, '212.48', 5),
(10125, 'S10_2016', 24, '110.54', 4),
(10125, 'S12_1099', 29, '161.83', 2),
(10125, 'S12_2823', 31, '118.46', 1),
(10125, 'S12_3148', 37, '132.14', 3),
(10125, 'S12_3891', 34, '138.11', 6),
(10125, 'S12_4473', 48, '105.20', 7),
(10125, 'S18_2625', 29, '52.18', 8),
(10125, 'S18_3029', 23, '65.20', 10),
(10125, 'S18_3136', 34, '93.58', 9),
(10125, 'S18_3320', 34, '80.41', 11),
(10125, 'S18_4027', 38, '121.62', 12),
(10125, 'S18_4600', 35, '101.72', 13),
(10125, 'S18_4668', 29, '46.19', 14),
(10125, 'S24_2022', 30, '40.58', 15),
(10125, 'S24_2300', 35, '104.90', 16),
(10125, 'S24_3151', 27, '62.85', 17),
(10125, 'S24_3816', 47, '75.57', 18),
(10125, 'S700_2824', 45, '101.92', 19);


select * from orderdetails;

select (select productName from products) as products, sum(quantityOrdered) as totalQuantity
from orderdetails
group by products
having totalQuantity > 200;

select * from products;

select * from employees;

select officeCode, count(*)
from employees
group by officeCode
having count(*) > 10;

select * from customers;

select state, count(*)
from customers
group by state
having count(*) > 50;

select * from orders;







    