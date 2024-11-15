CREATE DATABASE RealEstateManagement;
USE RealEstateManagement;

CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL
);


CREATE TABLE Owners (
    SPID VARCHAR(50) PRIMARY KEY,
    OWNTYPE VARCHAR(50),
    SOCIETY_NAME VARCHAR(255)
);
CREATE TABLE Property (
    PROP_ID VARCHAR(50) PRIMARY KEY,
    SPID VARCHAR(50),
    PROPERTY_TYPE VARCHAR(50),
    PRICE_PER_UNIT_AREA DECIMAL(10, 2),
    REGISTERED_DAYS VARCHAR(50),
    SOCIETY_NAME VARCHAR(255),
    BUILDING_NAME VARCHAR(255),
    FLOOR_NUM INT,
    FOREIGN KEY (SPID) REFERENCES Owners(SPID)
);
CREATE TABLE Property_Details (
    PROP_ID VARCHAR(50) PRIMARY KEY,
    BEDROOM_NUM INT,
    BALCONY_NUM INT,
    FOREIGN KEY (PROP_ID) REFERENCES Property(PROP_ID)
);
CREATE TABLE Property_Location (
    PROP_ID VARCHAR(50) PRIMARY KEY,
    CITY VARCHAR(100),
    LOCATION_DETAILS TEXT,
    FOREIGN KEY (PROP_ID) REFERENCES Property(PROP_ID)
);
CREATE TABLE Transactions (
    TRANSACT_ID INT AUTO_INCREMENT PRIMARY KEY,
    TRANSACT_TYPE INT,
    PRICE_PER_UNIT_AREA DECIMAL(10, 2),
    PROP_ID VARCHAR(50),
    PRICE VARCHAR(50),
    FOREIGN KEY (PROP_ID) REFERENCES Property(PROP_ID)
);

Create Table Owner_details (
	Owner_id varchar(50) primary key,
    Owner_Type varchar(255) ,
    Society_Name varchar(255) ,
    Price varchar(10),
    Room int
);	


INSERT INTO Owners (SPID, OWNTYPE, SOCIETY_NAME)  
VALUES  
('Y71306776', 'Residential Apartment', 'Srijan Star Swapno Puron'),  
('B70113976', 'Residential Apartment', 'Natural Quest'),  
('O70374510', 'Residential Apartment', 'Ganguly 4Sight Eminence'),  
('Q69170182', 'Residential Land', 'Dev Bhumi'),  
('F69917588', 'Residential Apartment', 'DTC Sojon'),  
('Y69917586', 'Residential Apartment', 'DTC Sojon'),  
('G68329262', 'Residential Apartment', 'The Signature'),  
('J71214794', 'Residential Apartment', 'Bhawani Bandhan'),  
('K71064488', 'Residential Apartment', 'Symphony Proxima'),  
('Q71064486', 'Residential Apartment', 'Symphony Proxima'),  
('B70365336', 'Residential Land', 'Speedland Raspunja Township'),  
('N68751922', 'Residential Apartment', 'Ganga Jamuna Apartment'),  
('L70281512', 'Residential Apartment', 'Magnolia Sunshine'),  
('W69843582', 'Independent House/Villa', 'Eden Spring Villas'),  
('C70835398', 'Residential Apartment', 'Ganguly 4Sight Desire'),  
('T70835396', 'Residential Apartment', 'Ganguly 4Sight Desire'),  
('F70835394', 'Residential Apartment', 'Ganguly 4Sight Desire'),  
('B71345632', 'Independent House/Villa', 'Newtown Villas'),  
('P69854924', 'Residential Apartment', 'DTC Capital City');

INSERT INTO Owners (SPID, OWNTYPE, SOCIETY_NAME)  
VALUES  
('A69153106', 'Independent/Builder Floor', NULL),  
('X71309612', 'Residential Land', 'Ariyan Housing Complex'),  
('V68360652', 'Residential Apartment', 'Happy Homes V'),  
('Z68360650', 'Residential Apartment', 'Happy Homes V'),  
('N68841064', 'Residential Apartment', 'PD Kasturi Heights'),  
('P70333418', 'Independent House/Villa', 'Harbour Greens'),  
('D70333416', 'Independent House/Villa', 'Harbour Greens'),  
('M69710576', 'Residential Apartment', 'Spotlight Countryside'),  
('Z69710572', 'Residential Apartment', 'Spotlight Countryside'),  
('U71423514', 'Residential Apartment', 'Tirath Guru'),  
('F70905996', 'Residential Apartment', 'SGIL Gardenia'),  
('I70905992', 'Residential Apartment', 'SGIL Gardenia'),  
('M70364606', 'Residential Apartment', 'Oswal Orchard Amritaya'),  
('L70364604', 'Residential Apartment', 'Oswal Orchard Amritaya'),  
('B69937000', 'Residential Apartment', 'Merlin Skygaze'),  
('G69936996', 'Residential Apartment', 'Merlin Skygaze'),  
('O69936982', 'Residential Apartment', 'Merlin Oikyo'),  
('K69936980', 'Residential Apartment', 'Merlin Oikyo'),  
('I69920536', 'Residential Apartment', 'Merlin Rise'),  
('H69920532', 'Residential Apartment', 'Merlin Rise'),  
('B69377086', 'Residential Apartment', 'Ganguly 4Sight Vivante'),  
('X69377084', 'Residential Apartment', 'Ganguly 4Sight Vivante'),  
('V69263956', 'Residential Apartment', 'Urban Vista Phase 1'),  
('S69263954', 'Residential Apartment', 'Urban Vista Phase 1'),  
('I68724916', 'Residential Apartment', 'Loharuka Green Heights Phase 2'),  
('Z68724914', 'Residential Apartment', 'Loharuka Green Heights Phase 2'),  
('W68670536', 'Residential Apartment', 'Atri Surya Toron'),  
('N68665802', 'Residential Apartment', 'Atri Rays'),  
('Y68665800', 'Residential Apartment', 'Atri Rays'),  
('D68665168', 'Residential Apartment', 'Atri Aqua'),  
('Y68665166', 'Residential Apartment', 'Atri Aqua'),  
('I68663694', 'Residential Apartment', 'Atri Surya Toron'),  
('C71352588', 'Residential Apartment', 'Bhawani Sunrise'),  
('K71352586', 'Residential Apartment', 'Bhawani Sunrise'),  
('G71230360', 'Residential Apartment', 'Natural City Madhyamgram'),  
('F71230356', 'Residential Apartment', 'Natural City Madhyamgram'),  
('S71010126', 'Independent House/Villa', 'Greenland The Eco Village');
  
INSERT INTO Property (PROP_ID, SPID, PROPERTY_TYPE, PRICE_PER_UNIT_AREA, REGISTERED_DAYS, SOCIETY_NAME, BUILDING_NAME, FLOOR_NUM)  
VALUES  
('Y71306776', 'Y71306776', 'Residential Apartment', 3662.00, '5', 'Srijan Star Swapno Puron', 'Srijan Star Swapno Puron', 1),  
('B70113976', 'B70113976', 'Residential Apartment', 10500.00, '5', 'Natural Quest', 'Natural Quest', 1),  
('O70374510', 'O70374510', 'Residential Apartment', 8900.00, '5', 'Ganguly 4Sight Eminence', 'Ganguly 4Sight Eminence', 1),  
('Q69170182', 'Q69170182', 'Residential Land', 208.00, '0', 'Dev Bhumi', 'Dev Bhumi', 0),  
('F69917588', 'F69917588', 'Residential Apartment', 5215.00, '5', 'DTC Sojon', 'DTC Sojon', 1),  
('Y69917586', 'Y69917586', 'Residential Apartment', 5108.00, '5', 'DTC Sojon', 'DTC Sojon', 1),  
('G68329262', 'G68329262', 'Residential Apartment', 7048.00, '5', 'The Signature', 'The Signature', 1),  
('J71214794', 'J71214794', 'Residential Apartment', 4239.00, '5', 'Bhawani Bandhan', 'Bhawani Bandhan', 1),  
('K71064488', 'K71064488', 'Residential Apartment', 4700.00, '5', 'Symphony Proxima', 'Symphony Proxima', 1),  
('Q71064486', 'Q71064486', 'Residential Apartment', 4700.00, '5', 'Symphony Proxima', 'Symphony Proxima', 1),  
('B70365336', 'B70365336', 'Residential Land', 250.00, '0', 'Speedland Raspunja Township', 'Speedland Raspunja Township', 0),  
('N68751922', 'N68751922', 'Residential Apartment', 7.00, '3', 'Ganga Jamuna Apartment', 'Ganga Jamuna Apartment', 4),  
('L70281512', 'L70281512', 'Residential Apartment', 5000.00, '5', 'Magnolia Sunshine', 'Magnolia Sunshine', 1),  
('W69843582', 'W69843582', 'Independent House/Villa', 5130.00, '5', 'Eden Spring Villas', 'Eden Spring Villas', 0),  
('C70835398', 'C70835398', 'Residential Apartment', 5100.00, '5', 'Ganguly 4Sight Desire', 'Ganguly 4Sight Desire', 1),  
('T70835396', 'T70835396', 'Residential Apartment', 5100.00, '5', 'Ganguly 4Sight Desire', 'Ganguly 4Sight Desire', 1),  
('F70835394', 'F70835394', 'Residential Apartment', 5100.00, '5', 'Ganguly 4Sight Desire', 'Ganguly 4Sight Desire', 1),  
('B71345632', 'B71345632', 'Independent House/Villa', 8515.00, '5', 'Newtown Villas', 'Newtown Villas', 0),  
('P69854924', 'P69854924', 'Residential Apartment', 4742.00, '5', 'DTC Capital City', 'DTC Capital City', 1);

INSERT INTO Property (PROP_ID, SPID, PROPERTY_TYPE, PRICE_PER_UNIT_AREA, REGISTERED_DAYS, SOCIETY_NAME, BUILDING_NAME, FLOOR_NUM)  
VALUES   
('A69153106', 'A69153106', 'Independent/Builder Floor', 5.00, 1, NULL, NULL, 2),  
('X71309612', 'X71309612', 'Residential Land', 485.00, 0, 'Ariyan Housing Complex', 'Ariyan Housing Complex', 0),  
('V68360652', 'V68360652', 'Residential Apartment', 3581.00, 0, 'Happy Homes V', 'Happy Homes V', 6),  
('Z68360650', 'Z68360650', 'Residential Apartment', 3454.00, 0, 'Happy Homes V', 'Happy Homes V', 6),  
('N68841064', 'N68841064', 'Residential Apartment', 3700.00, 0, 'PD Kasturi Heights', 'PD Kasturi Heights', 5),  
('P70333418', 'P70333418', 'Independent House/Villa', 3819.00, 0, 'Harbour Greens', 'Harbour Greens', 6),  
('D70333416', 'D70333416', 'Independent House/Villa', 2342.00, 0, 'Harbour Greens', 'Harbour Greens', 6),  
('M69710576', 'M69710576', 'Residential Apartment', 3500.00, 0, 'Spotlight Countryside', 'Spotlight Countryside', 5),  
('Z69710572', 'Z69710572', 'Residential Apartment', 3520.00, 0, 'Spotlight Countryside', 'Spotlight Countryside', 5),  
('U71423514', 'U71423514', 'Residential Apartment', 5600.00, 0, 'Tirath Guru', 'Tirath Guru', 6),  
('F70905996', 'F70905996', 'Residential Apartment', 4000.00, 0, 'SGIL Gardenia', 'SGIL Gardenia', 6),  
('I70905992', 'I70905992', 'Residential Apartment', 4000.00, 0, 'SGIL Gardenia', 'SGIL Gardenia', 6),  
('M70364606', 'M70364606', 'Residential Apartment', 48278.00, 0, 'Oswal Orchard Amritaya', 'Oswal Orchard Amritaya', 5),  
('L70364604', 'L70364604', 'Residential Apartment', 6178.00, 0, 'Oswal Orchard Amritaya', 'Oswal Orchard Amritaya', 5),  
('B69937000', 'B69937000', 'Residential Apartment', 7265.00, 0, 'Merlin Skygaze', 'Merlin Skygaze', 5),  
('G69936996', 'G69936996', 'Residential Apartment', 6831.00, 0, 'Merlin Skygaze', 'Merlin Skygaze', 5),  
('O69936982', 'O69936982', 'Residential Apartment', 4632.00, 0, 'Merlin Oikyo', 'Merlin Oikyo', 5),  
('K69936980', 'K69936980', 'Residential Apartment', 4535.00, 0, 'Merlin Oikyo', 'Merlin Oikyo', 5),  
('I69920536', 'I69920536', 'Residential Apartment', 6527.00, 0, 'Merlin Rise', 'Merlin Rise', 5),  
('H69920532', 'H69920532', 'Residential Apartment', 6495.00, 0, 'Merlin Rise', 'Merlin Rise', 5),  
('B69377086', 'B69377086', 'Residential Apartment', 7300.00, 0, 'Ganguly 4Sight Vivante', 'Ganguly 4Sight Vivante', 5),  
('X69377084', 'X69377084', 'Residential Apartment', 7300.00, 0, 'Ganguly 4Sight Vivante', 'Ganguly 4Sight Vivante', 5),  
('V69263956', 'V69263956', 'Residential Apartment', 6094.00, 0, 'Urban Vista Phase 1', 'Urban Vista Phase 1', 5),  
('S69263954', 'S69263954', 'Residential Apartment', 5875.00, 0, 'Urban Vista Phase 1', 'Urban Vista Phase 1', 5),  
('I68724916', 'I68724916', 'Residential Apartment', 9550.00, 0, 'Loharuka Green Heights Phase 2', 'Loharuka Green Heights Phase 2', 5),  
('Z68724914', 'Z68724914', 'Residential Apartment', 8506.00, 0, 'Loharuka Green Heights Phase 2', 'Loharuka Green Heights Phase 2', 5),  
('W68670536', 'W68670536', 'Residential Apartment', 22408.00, 0, 'Atri Surya Toron', 'Atri Surya Toron', 5),  
('N68665802', 'N68665802', 'Residential Apartment', 12207.00, 0, 'Atri Rays', 'Atri Rays', 5),  
('Y68665800', 'Y68665800', 'Residential Apartment', 12222.00, 0, 'Atri Rays', 'Atri Rays', 5),  
('D68665168', 'D68665168', 'Residential Apartment', 3997.00, 0, 'Atri Aqua', 'Atri Aqua', 5),  
('Y68665166', 'Y68665166', 'Residential Apartment', 7639.00, 0, 'Atri Aqua', 'Atri Aqua', 5),  
('I68663694', 'I68663694', 'Residential Apartment', 12886.00, 0, 'Atri Surya Toron', 'Atri Surya Toron', 5),  
('C71352588', 'C71352588', 'Residential Apartment', 4075.00, 0, 'Bhawani Sunrise', 'Bhawani Sunrise', 5),  
('K71352586', 'K71352586', 'Residential Apartment', 3995.00, 0, 'Bhawani Sunrise', 'Bhawani Sunrise', 5),  
('G71230360', 'G71230360', 'Residential Apartment', 4044.00, 0, 'Natural City Madhyamgram', 'Natural City Madhyamgram', 5),  
('F71230356', 'F71230356', 'Residential Apartment', 4072.00, 0, 'Natural City Madhyamgram', 'Natural City Madhyamgram', 5),  
('S71010126', 'S71010126', 'Independent House/Villa', 4316.00, 0, 'Greenland The Eco Village', 'Greenland The Eco Village', 6);

  
INSERT INTO Property_Details (PROP_ID, BEDROOM_NUM, BALCONY_NUM)  
VALUES  
('Y71306776', 2, 0),  
('B70113976', 3, 0),  
('O70374510', 3, 0),  
('Q69170182', 0, 0),  
('F69917588', 3, 0),  
('Y69917586', 2, 0),  
('G68329262', 3, 0),  
('J71214794', 2, 0),  
('K71064488', 3, 0),  
('Q71064486', 2, 0),  
('B70365336', 0, 0),  
('N68751922', 4, 0),  
('L70281512', 2, 0),  
('W69843582', 3, 0),  
('C70835398', 3, 0),  
('T70835396', 2, 0),  
('F70835394', 1, 0),  
('B71345632', 4, 0),  
('P69854924', 4, 0);
  
INSERT INTO Property_Location (PROP_ID, CITY, LOCATION_DETAILS)  
VALUES  
('Y71306776', 'Kolkata South', 'Amtala'),  
('B70113976', 'Kolkata South', 'EM Bypass'),  
('O70374510', 'Kolkata South', 'Garia'),  
('Q69170182', 'Kolkata South', 'Joka'),  
('F69917588', 'Kolkata South', 'Joka'),  
('Y69917586', 'Kolkata South', 'Joka'),  
('G68329262', 'Kolkata South', 'New Alipore'),  
('J71214794', 'Kolkata North', 'Madhyamgram'),  
('K71064488', 'Kolkata South', 'Kamalgazi'),  
('Q71064486', 'Kolkata South', 'Kamalgazi'),  
('B70365336', 'Kolkata South', 'Joka'),  
('N68751922', 'Kolkata Central', 'Shakespeare Sarani'),  
('L70281512', 'Kolkata East', 'New Town'),  
('W69843582', 'Kolkata South', 'Joka'),  
('C70835398', 'Kolkata South', 'Garia'),  
('T70835396', 'Kolkata South', 'Garia'),  
('F70835394', 'Kolkata South', 'Garia'),  
('B71345632', 'Kolkata East', 'New Town'),  
('P69854924', 'Kolkata East', 'Rajarhat');
  
INSERT INTO Transactions (TRANSACT_TYPE, PRICE_PER_UNIT_AREA, PROP_ID, PRICE)  
VALUES  
(1, 3662.00, 'Y71306776', '19.1 L Onwards'),  
(1, 10500.00, 'B70113976', '1.17 - 1.18 Cr'),  
(1, 8900.00, 'O70374510', '1.22 - 1.35 Cr'),  
(1, 208.00, 'Q69170182', '1.5 - 5.99 L'),  
(1, 5215.00, 'F69917588', '60 - 75 L'),  
(1, 5108.00, 'Y69917586', '45 - 49 L'),  
(1, 7048.00, 'G68329262', '90.85 L Onwards'),  
(1, 4239.00, 'J71214794', '39 L'),  
(1, 4700.00, 'K71064488', '52.64 - 60.16 L'),  
(1, 4700.00, 'Q71064486', '41.59 - 41.83 L'),  
(1, 250.00, 'B70365336', '1.8 - 5.4 L'),  
(1, 7.00, 'N68751922', '11,000/Bed'),  
(1, 5000.00, 'L70281512', '42 - 43.4 L'),  
(1, 5130.00, 'W69843582', '80.03 L'),  
(1, 5100.00, 'C70835398', '50.69 - 52.28 L'),  
(1, 5100.00, 'T70835396', '36.97 - 42.48 L'),  
(1, 5100.00, 'F70835394', '27.28 L'),  
(1, 8515.00, 'B71345632', '1.29 - 1.59 Cr'),  
(1, 4742.00, 'P69854924', '92 L');


INSERT INTO Property_Details (PROP_ID, BEDROOM_NUM, BALCONY_NUM)  
VALUES 
('A69153106', 4, 1),  
('X71309612', NULL, NULL),  
('V68360652', 3, 0),  
('Z68360650', 2, 0),  
('N68841064', 2, 0),  
('P70333418', 4, 0),  
('D70333416', 3, 0),  
('M69710576', 3, 0),  
('Z69710572', 2, 0),  
('U71423514', 3, 0),  
('F70905996', 3, 0),  
('I70905992', 2, 0),  
('M70364606', 3, 0),  
('L70364604', 2, 0),  
('B69937000', 3, 0),  
('G69936996', 2, 0),  
('O69936982', 3, 0),  
('K69936980', 2, 0),  
('I69920536', 3, 0),  
('H69920532', 2, 0),  
('B69377086', 3, 0),  
('X69377084', 2, 0),  
('V69263956', 3, 0),  
('S69263954', 2, 0),  
('I68724916', 3, 0),  
('Z68724914', 2, 0),  
('W68670536', 2, 0),  
('N68665802', 3, 0),  
('Y68665800', 2, 0),  
('D68665168', 3, 0),  
('Y68665166', 2, 0),  
('I68663694', 3, 0),  
('C71352588', 3, 0),  
('K71352586', 2, 0),  
('G71230360', 3, 0),  
('F71230356', 2, 0),  
('S71010126', 4, 0);
  
INSERT INTO Property_Location (PROP_ID, CITY, LOCATION_DETAILS)  
VALUES 
('A69153106', 'Kolkata South', 'Jadubabur Bazar'),  
('X71309612', 'Kolkata South', 'Joka'),  
('V68360652', 'Kolkata South', 'Ramchandrapur'),  
('Z68360650', 'Kolkata South', 'Ramchandrapur'),  
('N68841064', 'Kolkata North', 'Madhyamgram'),  
('P70333418', 'Kolkata South', 'Amtala'),  
('D70333416', 'Kolkata South', 'Amtala'),  
('M69710576', 'Kolkata South', 'Rajpur'),  
('Z69710572', 'Kolkata South', 'Rajpur'),  
('U71423514', 'Kolkata North', 'Bangur'),  
('F70905996', 'Kolkata South', 'Narendrapur'),  
('I70905992', 'Kolkata South', 'Narendrapur'),  
('M70364606', 'Kolkata North', 'BT Road'),  
('L70364604', 'Kolkata North', 'BT Road'),  
('B69937000', 'Kolkata South', 'EM Bypass'),  
('G69936996', 'Kolkata South', 'EM Bypass'),  
('O69936982', 'Kolkata South', 'Baruipur'),  
('K69936980', 'Kolkata South', 'Baruipur'),  
('I69920536', 'Kolkata East', 'Rajarhat'),  
('H69920532', 'Kolkata East', 'Rajarhat'),  
('B69377086', 'Kolkata South', 'EM Bypass'),  
('X69377084', 'Kolkata South', 'EM Bypass'),  
('V69263956', 'Kolkata East', 'Rajarhat'),  
('S69263954', 'Kolkata East', 'Rajarhat'),  
('I68724916', 'Kolkata East', 'Rajarhat'),  
('Z68724914', 'Kolkata East', 'Rajarhat'),  
('W68670536', 'Kolkata South', 'Boral'),  
('N68665802', 'Kolkata South', 'Narendrapur'),  
('Y68665800', 'Kolkata South', 'Narendrapur'),  
('D68665168', 'Kolkata South', 'Narendrapur'),  
('Y68665166', 'Kolkata South', 'Narendrapur'),  
('I68663694', 'Kolkata South', 'Boral'),  
('C71352588', 'Kolkata North', 'Dum Dum'),  
('K71352586', 'Kolkata North', 'Dum Dum'),  
('G71230360', 'Kolkata North', 'Madhyamgram'),  
('F71230356', 'Kolkata North', 'Madhyamgram'),  
('S71010126', 'Kolkata South', 'Sonarpur');

INSERT INTO Transactions (TRANSACT_TYPE, PRICE_PER_UNIT_AREA, PROP_ID, PRICE)  
VALUES 
(2, 5.00, 'A69153106', '11,000'),  
(1, 485.00, 'X71309612', '4.23 Lac - 79.37 Lac'),  
(1, 3581.00, 'V68360652', '34.03 Lac - 34.94 Lac'),  
(1, 3454.00, 'Z68360650', '26.58 Lac - 28.38 Lac'),  
(1, 3700.00, 'N68841064', '30.67 Lac - 38.48 Lac'),  
(1, 3819.00, 'P70333418', '55 Lac'),  
(1, 2342.00, 'D70333416', '36 Lac'),  
(1, 3500.00, 'M69710576', '37.94 Lac'),  
(1, 3520.00, 'Z69710572', '29.5 Lac'),  
(1, 5600.00, 'U71423514', '69.38 Lac - 70.22 Lac'),  
(1, 4000.00, 'F70905996', '43.36 Lac - 50.68 Lac'),  
(1, 4000.00, 'I70905992', '32.76 Lac'),  
(1, 48278.00, 'M70364606', '92.45 Lac - 1.12 Crore'),  
(1, 6178.00, 'L70364604', '56.97 Lac - 58.51 Lac'),  
(1, 7265.00, 'B69937000', '57 Lac - 57.95 Lac'),  
(1, 6831.00, 'G69936996', '47 Lac'),  
(1, 4632.00, 'O69936982', '38.45 Lac'),  
(1, 4535.00, 'K69936980', '22.88 Lac - 26 Lac'),  
(1, 6527.00, 'I69920536', '53 Lac'),  
(1, 6495.00, 'H69920532', '41 Lac - 41.6 Lac'),  
(1, 7300.00, 'B69377086', '82.56 Lac - 95.63 Lac'),  
(1, 7300.00, 'X69377084', '58.76 Lac - 67.45 Lac'),  
(1, 6094.00, 'V69263956', '66 Lac - 76.18 Lac'),  
(1, 5875.00, 'S69263954', '47 Lac - 63.86 Lac'),  
(1, 9550.00, 'I68724916', '68 Lac - 78.12 Lac'),  
(1, 8506.00, 'Z68724914', '49 Lac - 57.25 Lac'),  
(1, 22408.00, 'W68670536', '19.69 Lac - 22.47 Lac'),  
(1, 12207.00, 'N68665802', '41.06 Lac - 41.79 Lac'),  
(1, 12222.00, 'Y68665800', '31.94 Lac - 33.41 Lac'),  
(1, 3997.00, 'D68665168', '46.45 Lac'),  
(1, 7639.00, 'Y68665166', '32.01 Lac - 32.34 Lac'),  
(1, 12886.00, 'I68663694', '24.4 Lac - 26.37 Lac'),  
(1, 4075.00, 'C71352588', '55 Lac - 55 Lac'),  
(1, 3995.00, 'K71352586', '37 Lac - 37 Lac'),  
(1, 4044.00, 'G71230360', '48 Lac - 56 Lac'),  
(1, 4072.00, 'F71230356', '38 Lac'),  
(1, 4316.00, 'S71010126', '1 Crore - 1.65 Crore');

-- HYD
INSERT INTO Owners (SPID, OWNTYPE, SOCIETY_NAME) VALUES 
('Z70135726', 'Residential Apartment', 'Evolve'),
('A68489968', 'Residential Apartment', 'Annes Fortune Greenhomes Swan'),
('M69555358', 'Residential Apartment', 'The Olympus'),
('P69555352', 'Residential Apartment', 'The Olympus'),
('B70237806', 'Independent House/Villa', 'Siva Sai Infra Myra'),
('Z69662330', 'Residential Apartment', 'Iris by Raghava'),
('S70679968', 'Residential Apartment', 'KSR Greens'),
('I70148736', 'Residential Land', 'Pragati Green Meadows'),
('M67722344', 'Residential Apartment', 'Aditya Athena'),
('B69323950', 'Independent House/Villa', 'Tripura Landmark 4'),
('D69323942', 'Independent House/Villa', 'Tripura Landmark 4'),
('Q69322784', 'Residential Apartment', 'Tripura Green Alpha'),
('X69322780', 'Residential Apartment', 'Tripura Green Alpha'),
('N69626392', 'Residential Apartment', 'DSR Valar'),
('E69552350', 'Residential Apartment', 'DSR Park Ridge');

INSERT INTO Property (PROP_ID, SPID, PROPERTY_TYPE, PRICE_PER_UNIT_AREA, REGISTERED_DAYS, SOCIETY_NAME, BUILDING_NAME, FLOOR_NUM) VALUES 
('Z70135726', 'Z70135726', 'Residential Apartment', 5700, '1', 'Evolve', 'Evolve', 2),
('A68489968', 'A68489968', 'Residential Apartment', 6000, '5', 'Annes Fortune Greenhomes Swan', 'Annes Fortune Greenhomes Swan', 1),
('M69555358', 'M69555358', 'Residential Apartment', 0, '5', 'The Olympus', 'The Olympus', 1),
('P69555352', 'P69555352', 'Residential Apartment', 20049, '5', 'The Olympus', 'The Olympus', 1),
('B70237806', 'B70237806', 'Independent House/Villa', 8999, '0', 'Siva Sai Infra Myra', 'Siva Sai Infra Myra', NULL),
('Z69662330', 'Z69662330', 'Residential Apartment', 14000, '5', 'Iris by Raghava', 'Iris by Raghava', 1),
('S70679968', 'S70679968', 'Residential Apartment', 7800, '5', 'KSR Greens', 'KSR Greens', 1),
('I70148736', 'I70148736', 'Residential Land', 3333, '0', 'Pragati Green Meadows', 'Pragati Green Meadows', NULL),
('M67722344', 'M67722344', 'Residential Apartment', 10169, '5', 'Aditya Athena', 'Aditya Athena', 1),
('B69323950', 'B69323950', 'Independent House/Villa', 10000, '5', 'Tripura Landmark 4', 'Tripura Landmark 4', NULL),
('D69323942', 'D69323942', 'Independent House/Villa', 10000, '5', 'Tripura Landmark 4', 'Tripura Landmark 4', NULL),
('Q69322784', 'Q69322784', 'Residential Apartment', 7000, '5', 'Tripura Green Alpha', 'Tripura Green Alpha', 1),
('X69322780', 'X69322780', 'Residential Apartment', 7000, '5', 'Tripura Green Alpha', 'Tripura Green Alpha', 1),
('N69626392', 'N69626392', 'Residential Apartment', 7711, '5', 'DSR Valar', 'DSR Valar', 1),
('E69552350', 'E69552350', 'Residential Apartment', 6329, '5', 'DSR Park Ridge', 'DSR Park Ridge', 1);

INSERT INTO Property_Details (PROP_ID, BEDROOM_NUM, BALCONY_NUM) VALUES 
('Z70135726', 2, NULL),
('A68489968', 2, NULL),
('M69555358', 4, NULL),
('P69555352', 3, NULL),
('B70237806', 3, NULL),
('Z69662330', 4, NULL),
('S70679968', 3, NULL),
('I70148736', NULL, NULL),
('M67722344', 3, NULL),
('B69323950', 4, NULL),
('D69323942', 3, NULL),
('Q69322784', 3, NULL),
('X69322780', 2, NULL),
('N69626392', 4, NULL),
('E69552350', 3, NULL);

INSERT INTO Property_Location (PROP_ID, CITY, LOCATION_DETAILS) VALUES 
('Z70135726', 'Secunderabad', 'Close to all international schools, colleges, with clubhouse, swimming pool, with all amenities provided.'),
('A68489968', 'Hyderabad', 'Comfortable living with a super built-up area of 1155.0 sq. ft. to 1395.0 sq. ft.'),
('M69555358', 'Hyderabad', 'Well-known project offers apartments with a super built-up area ranging from 2880.0 sq. ft. to 3000.0 sq. ft.'),
('P69555352', 'Hyderabad', 'Blissful living experience with 3 BHK flats.'),
('B70237806', 'Hyderabad', 'Residential development with all necessities.'),
('Z69662330', 'Hyderabad', 'Finest design and amenities with a super built-up area of 5425.0 sq. ft. to 6605.0 sq. ft.'),
('S70679968', 'Hyderabad', 'Under construction project with a range of super built-up area.'),
('I70148736', 'Hyderabad', 'Residential plotting with a perfect combination of contemporary architecture.'),
('M67722344', 'Hyderabad', 'Exclusive view and refreshing vibes with excellent infrastructure.'),
('B69323950', 'Hyderabad', 'Beautiful villas built with all essential amenities.'),
('D69323942', 'Hyderabad', 'Lavish villas with essential amenities.'),
('Q69322784', 'Hyderabad', 'Comfortable living with a super built-up area of 1935.0 sq. ft. to 2030.0 sq. ft.'),
('X69322780', 'Hyderabad', 'Under construction property available for Rs. 88.55 Lac.'),
('N69626392', 'Hyderabad', 'Excellent aesthetics and exemplary lifestyle.'),
('E69552350', 'Hyderabad', 'Unique highlights and true value for money.');

INSERT INTO Transactions (TRANSACT_TYPE, PRICE_PER_UNIT_AREA, PROP_ID, PRICE)
VALUES 
(1, 5700, 'Z70135726', '6,925,000'),
(1, 6000, 'A68489968', '6,930,000'),
(1, 0, 'M69555358', 'Price on Request'),
(1, 20049, 'P69555352', '20,200,000'),
(1, 8999, 'B70237806', '24,200,000'),
(1, 14000, 'Z69662330', '75,900,000'),
(1, 7800, 'S70679968', '12,500,000'),
(2, 3333, 'I70148736', '8,000,000'),
(1, 10169, 'M67722344', '18,000,000'),
(2, 10000, 'B69323950', '29,100,000'),
(2, 10000, 'D69323942', '23,200,000'),
(1, 7000, 'Q69322784', '13,500,000'),
(1, 7000, 'X69322780', '8,855,000'),
(1, 7711, 'N69626392', '25,000,000'),
(1, 6329, 'E69552350', '1,000,000');

INSERT INTO Owner_Details (Owner_id, Owner_Type, Society_Name, Price, Room)  
VALUES  
('Y71306776', 'Residential Apartment', 'Srijan Star Swapno Puron', '3662', 2),  
('B70113976', 'Residential Apartment', 'Natural Quest', '10500', 3),  
('O70374510', 'Residential Apartment', 'Ganguly 4Sight Eminence', '8900', 3),  
('Q69170182', 'Residential Land', 'Dev Bhumi', '208', 0),  
('F69917588', 'Residential Apartment', 'DTC Sojon', '5215', 3),  
('Y69917586', 'Residential Apartment', 'DTC Sojon', '5108', 2),  
('G68329262', 'Residential Apartment', 'The Signature', '7048', 3),  
('J71214794', 'Residential Apartment', 'Bhawani Bandhan', '4239', 2),  
('K71064488', 'Residential Apartment', 'Symphony Proxima', '4700', 3),  
('Q71064486', 'Residential Apartment', 'Symphony Proxima', '4700', 2),  
('B70365336', 'Residential Land', 'Speedland Raspunja Township', '250', 0),  
('N68751922', 'Residential Apartment', 'Ganga Jamuna Apartment', '7', 4),  
('L70281512', 'Residential Apartment', 'Magnolia Sunshine', '5000', 2),  
('W69843582', 'Independent House/Villa', 'Eden Spring Villas', '5130', 3),  
('C70835398', 'Residential Apartment', 'Ganguly 4Sight Desire', '5100', 3),  
('T70835396', 'Residential Apartment', 'Ganguly 4Sight Desire', '5100', 2),  
('F70835394', 'Residential Apartment', 'Ganguly 4Sight Desire', '5100', 1),  
('B71345632', 'Independent House/Villa', 'Newtown Villas', '8515', 4),  
('P69854924', 'Residential Apartment', 'DTC Capital City', '4742', 4);
INSERT INTO Owner_details (Owner_id, Owner_Type, Society_Name, Price, Room)
VALUES
('D61812933', 'Residential Apartment', 'Greenview Residences', '5000', 2),
('E73521239', 'Independent House/Villa', 'Whispering Pines', '8500', 3),
('F92134682', 'Residential Land', 'Emerald Meadows', '4500', 0),
('G83429821', 'Residential Apartment', 'Cityscape Heights', '6000', 1),
('H91347293', 'Residential Apartment', 'Sunrise Towers', '5100', 2),
('J81957364', 'Residential Apartment', 'Blue Ridge Condos', '5200', 1),
('K73459821', 'Independent House/Villa', 'Willow Creek', '9000', 4),
('L92478562', 'Residential Apartment', 'Lakeview Residences', '6300', 3),
('M81347654', 'Residential Apartment', 'Silver Oak Apartments', '5700', 2),
('N73948126', 'Residential Land', 'Golden Fields', '3200', 0),
('O82918374', 'Residential Apartment', 'Urban Heights', '7000', 2),
('P73521983', 'Independent House/Villa', 'Bayside Villas', '8900', 3),
('Q81369274', 'Residential Apartment', 'Cedar Woods', '6500', 2),
('R83451293', 'Residential Apartment', 'Willow Green', '6800', 1),
('S71938471', 'Residential Land', 'Maple Park', '3500', 0),
('T93745612', 'Residential Apartment', 'Riverfront Condos', '7600', 2),
('U81478263', 'Residential Apartment', 'Mountain View', '5900', 3),
('V92348172', 'Independent House/Villa', 'Garden Estates', '9200', 4),
('W73458293', 'Residential Apartment', 'Forest Hills', '6400', 2),
('X81293746', 'Residential Land', 'Sunny Acres', '2700', 0),
('Y83478123', 'Residential Apartment', 'The Palms', '7200', 2),
('Z91384756', 'Residential Apartment', 'Oceanview Apartments', '5400', 1),
('A73419287', 'Independent House/Villa', 'Hilltop Estates', '8300', 3),
('B81927436', 'Residential Apartment', 'Meadowbrook', '5600', 2),
('C91473628', 'Residential Land', 'Riverside Park', '3600', 0),
('D83917345', 'Residential Apartment', 'Lakewood Towers', '5800', 2),
('E72918457', 'Residential Apartment', 'Pine Valley', '5900', 1),
('F71394628', 'Independent House/Villa', 'Vista Hills', '8700', 4),
('G83274918', 'Residential Apartment', 'Sunset Villas', '6600', 3),
('H81473629', 'Residential Land', 'Emerald Green', '4100', 0),
('J72481239', 'Residential Apartment', 'Clearwater Condos', '6200', 2),
('K91487263', 'Residential Apartment', 'Green Acres', '6400', 1),
('L83519247', 'Independent House/Villa', 'Meadow Springs', '9100', 3),
('M82491736', 'Residential Apartment', 'Hillside Residences', '5700', 2),
('N82374918', 'Residential Land', 'Pine Ridge', '3100', 0),
('O73912847', 'Residential Apartment', 'Bayview Tower', '7600', 3),
('P92478132', 'Independent House/Villa', 'Maple Grove', '9400', 4),
('Q81549376', 'Residential Apartment', 'Sunset Point', '7100', 2),
('R83745126', 'Residential Apartment', 'Blue Lagoon', '5300', 1),
('S81394765', 'Residential Land', 'Golden Valley', '2900', 0),
('T92457839', 'Residential Apartment', 'Evergreen Apartments', '6200', 2),
('U82347195', 'Independent House/Villa', 'Riverbend Estates', '8800', 3),
('V93487126', 'Residential Apartment', 'Highland Park', '6000', 1),
('W71829374', 'Residential Land', 'Willow Woods', '3000', 0),
('X83561274', 'Residential Apartment', 'Sunshine Towers', '6800', 2),
('Y83947218', 'Residential Apartment', 'Ocean Breeze', '5400', 1),
('Z92746182', 'Independent House/Villa', 'Country Estates', '8700', 4),
('A83647219', 'Residential Apartment', 'Meadowlands', '5900', 3),
('B83591847', 'Residential Land', 'Cherry Hill', '3100', 0),
('C81273498', 'Residential Apartment', 'Willow Pond', '5600', 2),
('D82347196', 'Independent House/Villa', 'Green Hills', '9300', 3),
('E81749263', 'Residential Apartment', 'Lakefront Residences', '6100', 1),
('F91347285', 'Residential Apartment', 'Mountain Ridge', '5300', 2),
('G81392745', 'Residential Land', 'Sunny Meadows', '2500', 0),
('H82947136', 'Residential Apartment', 'Hillside View', '7100', 2),
('J83294761', 'Independent House/Villa', 'Whispering Hills', '8500', 4),
('K81239745', 'Residential Apartment', 'Greenwood', '6300', 2),
('L83429176', 'Residential Apartment', 'The Summit', '6800', 1),
('M72938461', 'Residential Land', 'Golden Fields', '2900', 0),
('N81349628', 'Residential Apartment', 'Riverside Heights', '6000', 3),
('O92347185', 'Independent House/Villa', 'Meadow Brook', '9000', 4),
('P81239475', 'Residential Apartment', 'Springwood', '5600', 2),
('Q83927461', 'Residential Apartment', 'Skyline Condos', '5300', 1),
('R81392746', 'Residential Land', 'Sunny Grove', '2700', 0),
('S72918473', 'Residential Apartment', 'Silver Lake', '7200', 2),
('T81239745', 'Independent House/Villa', 'Maple Ridge', '8900', 3),
('U82397156', 'Residential Apartment', 'The Willows', '5700', 2),
('V91384629', 'Residential Apartment', 'Forest Ridge', '5100', 1),
('W83471962', 'Residential Land', 'Pine Meadows', '3300', 0),
('X92384712', 'Residential Apartment', 'Horizon View', '6600', 3),
('Y81347259', 'Independent House/Villa', 'Blue Haven', '9400', 4),
('Z82947165', 'Residential Apartment', 'Clear Lake', '6200', 2),
('A71839475', 'Residential Apartment', 'Ridgewood', '5900', 1),
('B92347196', 'Residential Land', 'Meadow Hill', '3700', 0),
('C83947261', 'Residential Apartment', 'Willow Springs', '6100', 2),
('D81473692', 'Independent House/Villa', 'Golden Valley', '8800', 3),
('E72394716', 'Residential Apartment', 'Cedar Valley', '5700', 1),
('F81394726', 'Residential Land', 'Sunny Hollow', '2900', 0),
('G83749261', 'Residential Apartment', 'Brookwood', '6400', 2),
('H92384761', 'Independent House/Villa', 'Evergreen Estates', '9200', 4),
('J83749265', 'Residential Apartment', 'Pine Ridge', '6700', 3),
('K73481726', 'Residential Apartment', 'Ocean View', '5500', 1),
('L81394765', 'Residential Land', 'Cherry Blossom', '2800', 0),
('M92473618', 'Residential Apartment', 'Bayview Condos', '6900', 2),
('N83749263', 'Independent House/Villa', 'Whispering Oaks', '8500', 4),
('O72918347', 'Residential Apartment', 'Willow Glen', '5800', 3),
('P81349628', 'Residential Apartment', 'Greenfield', '5200', 1),
('Q73491283', 'Residential Land', 'Elmwood Park', '3200', 0),
('R82347195', 'Residential Apartment', 'The Woods', '6500', 2),
('S91384762', 'Independent House/Villa', 'Riverfront Estates', '9100', 3);



-- QUERIES
SELECT COUNT(*) AS Total_Properties FROM Property;

SELECT * FROM Property P
JOIN Property_Location PL ON P.PROP_ID = PL.PROP_ID
WHERE PL.LOCATION_DETAILS LIKE 'Amtala';

SELECT SOCIETY_NAME, MAX(PRICE_PER_UNIT_AREA) AS Max_Price
FROM Property
GROUP BY SOCIETY_NAME;


SELECT PROPERTY_TYPE, AVG(PRICE_PER_UNIT_AREA) AS Average_Price
FROM Property
GROUP BY PROPERTY_TYPE
ORDER BY Average_Price DESC
LIMIT 2;

SELECT SPID, COUNT(DISTINCT PROPERTY_TYPE) AS Different_Property_Types
FROM Property
GROUP BY SPID;

SELECT SPID, COUNT(*) AS Property_Count
FROM Property
GROUP BY SPID
ORDER BY Property_Count ASC
LIMIT 1;

SELECT P.PROP_ID, COUNT(T.TRANSACT_ID) AS Transaction_Count
FROM Transactions T
JOIN Property P ON T.PROP_ID = P.PROP_ID
GROUP BY P.PROP_ID
HAVING Transaction_Count > 1;

SELECT MIN(BEDROOM_NUM) AS Min_Bedrooms, MAX(BEDROOM_NUM) AS Max_Bedrooms
FROM Property_Details PD
JOIN Property P ON PD.PROP_ID = P.PROP_ID
WHERE P.PROPERTY_TYPE = 'Residential Apartment';

SELECT COUNT(*) AS Properties_With_3_Bedrooms_2_Balconies
FROM Property_Details
WHERE BEDROOM_NUM = 3 AND BALCONY_NUM = 2;

SELECT P.PROP_ID
FROM Property P
JOIN Owners O ON P.SPID = O.SPID
WHERE P.REGISTERED_DAYS = 5;

SELECT GetHighestTransactionPrice('Z70135726') AS Highest_Price;

CALL UpdatePropertyPrice('Z70135726', 6500, @Result);
SELECT @Result AS Update_Status;

SELECT * FROM PropertiesInCity;

SELECT * FROM TransactionDetailsView;


SELECT 
            O.SPID, 
            O.OWNTYPE, 
            O.SOCIETY_NAME, 
            T.PRICE AS price, 
            PD.BEDROOM_NUM AS room 
        FROM 
            Owners O
        JOIN 
            Property P ON O.SPID = P.SPID
        JOIN 
            Property_Details PD ON P.PROP_ID = PD.PROP_ID
        JOIN 
            Transactions T ON P.PROP_ID = T.PROP_ID;
            
select * from owner_details;
select * from Property;

