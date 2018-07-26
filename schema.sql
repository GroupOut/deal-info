DROP DATABASE IF EXISTS nky_deal_info;
CREATE DATABASE nky_deal_info;

USE nky_deal_info;

DROP TABLE IF EXISTS deal_status;
CREATE TABLE deal_status (
  id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  expiration DATETIME,
  views INT,
  rating DOUBLE,
  review_count INT
);

DROP TABLE IF EXISTS deal_offers;
CREATE TABLE deal_offers (
  id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  offer_name VARCHAR(255),
  total_avail INT NOT NULL,
  claimed INT,
  original_price DOUBLE,
  discounted_price DOUBLE,
  deal_status_id INT NOT NULL,
  FOREIGN KEY (deal_status_id) REFERENCES deal_status(id)
);

INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company","2018-10-27 06:46:29",4350,3.01,81489);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Platinum Wash with Rain-X Wheel and Windshield Treatment","2018-08-28 19:18:51",5726,0.2,14560);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three Hour DIY Sculpting Class for One, Two, or Four at Play With Clay","2018-11-13 20:43:48",4488,3.36,30793);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Bread-Making Class for One, Two, or Four at Sour Flour","2018-09-12 14:26:37",8354,2.72,44316);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Painting Experiences at Muse Paintbar","2018-10-30 17:15:02",4133,3.16,52312);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Splashtown Water Park Visit for Two at Funtown Splashtown USA","2018-09-16 22:17:21",1365,4.69,96301);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Whale-Watching Cruise for One, Two, or Four from Cape Ann Whale Watch","2018-10-08 10:36:17",9307,4.61,4847);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("General Admission for Two or Four to King Richard's Faire","2018-11-08 09:16:59",1349,4.06,86787);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Distillery Tour and Etched Glencairn Whiskey Glasses for Two or Four at New England Distilling","2018-08-19 09:32:36",1700,3.69,20178);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Hour of Unlimited Bowling for Up to Four or Eight at Jimmy the Greek's Bowling and Arcade","2018-09-25 06:10:46",5453,3.14,9491);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("All-Day Fishing Trip for 1 or 2 with Rod Rental from Al Gauron Deep Sea Fishing & Whale Watching","2018-08-06 04:52:21",4027,2.78,5801);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Full-Day Waterfall Rappelling for One, Two, or Four at North Ridge Mountain Guides","2018-11-12 20:27:09",5063,4.37,12919);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beer Tasting and Pint Glasses for Two, Four, or Six at Kennebec River Pub and Brewery","2018-07-29 04:51:41",4992,3.11,33248);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Half-Day Rock-Climbing Trip for Two, Three, or Four from Acadia Mountain Guides Climbing Schoo","2018-08-08 20:40:55",7566,4.55,74811);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Premium Adventure for One Adult, Youth or Senior at Gunstock Mountain Resort","2018-10-06 12:21:24",4471,4.98,14377);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Zipline Adventure Course Admission for Two or Four at Monkey Trunks Chocorua","2018-08-28 12:29:40",8495,4.66,24625);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Axe Throwing for 6 or 12 People at Northern Axperts","2018-11-18 07:08:57",6012,3.22,69617);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beginner's Salsa-Dancing Course from SkillSuccess","2018-10-10 12:41:57",2758,3.64,75749);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beginner-Ukulele Online Course from SkillSuccess","2018-11-10 03:46:56",9644,4.67,27316);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Zipline Canopy Tour for One at Provo Canyon Adventures","2018-09-15 04:50:33",529,3.44,64065);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two or Four One-Hour Jump Passes at Airborne Trampoline Arena","2018-08-28 03:39:15",4928,4.58,20393);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("60-Minute Float Therapy Sessions at True Rest Float Spa","2018-11-06 16:02:37",1315,4.98,34260);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Month of Unlimited Classes Including Yoga, Hot Yoga, Barre at Mountain Yoga Sandy","2018-11-13 14:13:15",3171,4.16,88803);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One 60-Minute Massage at Aribella Salon and Spa","2018-09-16 15:00:58",3840,3.59,10891);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Turnagain Arm and Alaska Wildlife Tour from Anchorage","2018-08-29 17:25:57",807,4.13,86422);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage to Seward Cruise Transfer and Private Tour","2018-10-24 21:51:28",5302,4.9,70199);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Jump Passes or Party at Get Air","2018-10-22 16:58:50",6952,3.67,99530);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage City Tour with Alaska Native Heritage Center","2018-09-23 06:31:11",352,4.11,1509);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Juneau Shore Excursion: Whale-Watching Excursion","2018-08-02 01:11:41",4198,3.42,84083);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Admission for One Child or Adult to Aquarium of the Bay","2018-11-03 02:44:31",6823,3.53,26275);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("First-Aid, CPR, and AED Certification Course from Advanced Medical Certification","2018-10-19 02:25:44",1824,4.02,7355);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran","2018-09-10 05:10:10",9136,3.7,68374);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Hour Evening Manta Snorkeling for One or Two at Hawaii Island And Ocean Tours","2018-10-18 00:18:16",4535,4.77,27299);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Semi-Private and Private Surf Lessons at Moku Surf Rentals & Board Shop","2018-10-11 04:37:26",9691,4.43,90270);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Catamaran TradeWind Sailing Trip for Two, Four, or Six from Maita`i Catamaran","2018-08-31 15:09:36",9546,4.9,25889);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("25-minute RHS Distillery Micro Tour and Tasting with Optional Take-Home Bottle at RHS Distillery","2018-09-18 06:04:05",477,3.45,77829);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Maui Sunset Dinner Cruise","2018-07-31 02:43:36",8839,2.58,77157);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental for One or Two from Twogood Kayaks","2018-08-07 07:23:56",5302,4.05,79628);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Dolphin Snorkeling Tour for One, Two, or Four at EO Waianae Tours","2018-08-26 15:24:43",2662,4.63,38169);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pearl Harbor & Arizona Memorial Tour with Transportation from Aloha Pearl Harbor Tour","2018-10-25 01:57:45",4865,4.91,30782);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Resurrection Bay Cruise with Fox Island","2018-10-07 00:15:27",3332,4.17,70375);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Full-Day Tour or Overnight Trip from Miller Landing","2018-11-12 09:06:31",8151,2.83,97394);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Alaskan Bush Plane Piloting Experience with In-flight Instruction at Legends Alaska","2018-08-16 12:53:01",7080,4.92,29793);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("90-Minute Scenic Trail Ride for Two or Four at Sunderland Ranch","2018-09-07 18:02:12",4780,4.48,54539);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Nenana Gorge Whitewater Rafting - Oar Option","2018-09-02 10:31:05",8482,3.56,14777);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage Northern Lights Tour","2018-10-20 04:26:34",563,4.92,46405);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Grand Denali Flightseeing tour from Talkeetna","2018-10-20 10:43:49",4732,4.87,27594);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Helicopter and Glacier Dogsled Tour","2018-08-31 20:37:15",332,4.36,36023);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("18-Hole Extreme Mini-Golf Round or Extreme Fun Pass for Two, Four, or Six at Putters Wild","2018-08-16 13:55:18",2355,3.97,71524);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("2015 Vespa Primavera 150 Scooter at Rockridge Two Wheels and Vespa Walnut Creek","2018-10-09 04:46:48",308,4.37,91918);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Epic Day on The Bay! Create your own extreme yacht party with Flyboarding, Zorbing and more!","2018-09-01 11:01:28",7649,4.61,87920);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Ground School and Tandem Jump for One, Two, or Four from 9,000 or 13,000 Feet from Skydive Sacramento","2018-09-15 20:55:04",9440,3.67,85941);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pool Day or Rental from Sapphire Pool & Day Club","2018-11-05 08:36:35",819,2.51,50234);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Helicopter Tour at Specialized Helicopters","2018-08-21 09:00:39",1943,3.68,24160);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Wine Tours with Champagne for Up to 8, 12, or 14 Passengers from Event And Tours","2018-07-28 15:00:51",1465,4.33,89647);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("8 Hour Private Sonoma or Napa Wine Tasting Tour (Sedan, SUV or Limo)","2018-08-23 08:13:19",4969,3.55,7241);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Winery Tour in Limousine, SUV, Limousine Bus, or Sprinter from Event Logistic","2018-10-20 01:45:12",6258,3.23,68461);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Five Hours of Large-Group Luxury Transportation from Edda Limousine Service","2018-10-09 10:55:05",8022,2.81,29122);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Private Daytime or Night Food Tour for Up to 10 People at Team Building Food Tours","2018-11-17 07:37:41",6859,3.04,69686);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Six-Hour Day Camp","2018-08-04 03:55:14",3243,3.96,57860);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three-Hour Boat Tour for Three or Eight-Hour Private Boat Tour for Six from Bay Expeditions","2018-10-26 06:30:50",5443,3.67,88848);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three-Hour Guided Electric Bike Tour For Eight People from Eco Bike Adventures","2018-10-27 01:19:44",3277,1.99,5845);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Introductory Flight Course for One or Two People","2018-07-28 05:26:47",5788,2.71,22155);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Half- or Full-Day Fishing Trip of Choice for Up to Two","2018-11-14 04:42:53",4772,3.31,69608);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Yacht Charter for Up to Six with America Cup Charters","2018-09-14 19:12:38",1216,2.58,22586);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two, Four, or Six Tours of Surfing Goat Dairy","2018-10-28 04:04:28",2409,2.88,1703);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Haleakala Maui Zipline Tour for One, Two, or Four at Skyline Eco-Adventures","2018-10-23 17:12:57",4118,4.75,9994);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran","2018-10-31 11:27:45",1112,4.61,71172);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Amazing Comic Con Aloha Admission on August 24, 25, or 26","2018-09-26 03:45:10",7694,3.15,83791);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One, Two, or Four Tickets to USS Bowfin Submarine Museum & Park","2018-09-02 09:20:47",7374,4.76,13610);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Guided Kayak Tour for One or Two from San Francisco Kayak & Adventures","2018-11-02 05:50:25",4300,1.08,22384);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Performance Hybrid Bicycle Rental for One, Two, or Four at Bay City Bike","2018-07-27 11:48:59",6952,3.88,32856);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Ticket for Any Sailing Tour at San Francisco Sailing Company","2018-09-28 01:00:30",6652,3.07,40746);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("San Francisco Cannabis Walking Tour for One, Two, or Four at Explore San Francisco","2018-09-13 06:49:23",7597,4.5,96288);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Patriot Jet Boat Thrill Ride for One, Two, or Four at Flagship Cruises & Events","2018-10-14 23:13:22",3617,4.21,96210);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Whale Watching and Dolphin Cruise from Davey's Locker","2018-08-24 14:59:17",8840,2.58,69588);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("90-Minute Passes, Urban Tot or Early Bird, at Uptown Jungle Fun Park","2018-10-16 04:12:46",884,3.36,10237);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Wash and Cut with Tossle Dry or with All-Over Color or Partial Highlights at Fantastic Sams","2018-09-16 14:42:52",8708,4.39,44690);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One-Hour Shooting-Range Package for Two at P2K Range","2018-08-15 15:56:24",761,3.37,8150);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pirates Dinner Adventure in Buena Park for One Adult or Child","2018-08-28 23:48:34",3692,4.77,8140);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("General Admission for One, Two, or Four to The Wave Waterpark ","2018-09-16 23:07:39",8034,4.09,81228);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Online Driver's Ed with DMV Completion Certificate from MyCaliforniaPermit.com","2018-09-19 01:30:41",3197,4.74,53525);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Harbor Tour for One, Two, or Four from Flagship Cruises and Events","2018-10-13 04:39:11",8173,4.66,64407);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Round Trip Boat Ride to Catalina Island on The Catalina Flyer from Newport Beach ","2018-08-24 01:43:30",6404,2.54,27810);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Oil Change at SynFast Oil Change","2018-08-17 04:37:00",9014,4.69,4419);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("8 Pilates Classes at Pilates Room Studios","2018-08-28 09:50:48",1802,4.47,80083);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two, Three, Four, Five, or Seven Days of Airport or Seaport Parking at Laurel Parking","2018-08-10 06:21:54",9958,2.66,89680);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two Days of Airport Parking at Aladdin Airport Parking","2018-11-02 03:54:07",2513,4.28,55318);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Brazilian or Bikini Wax at Gigi's Beauty Boutique","2018-10-25 08:14:10",9085,4.33,1022);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two Craft Beers and a Slice of Pizza at Berkeley Pizza","2018-09-01 14:05:42",1450,2.87,34705);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One or Three Eyebrow Threading Sessions at Brazilia Skin Care","2018-11-05 05:51:07",5614,4.19,42020);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Four-Week Medical Weight-Loss Package at Empower Weight Loss","2018-10-19 20:03:02",2877,4.77,85467);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Consultation with Exam and One or Two Adjustments at Well-Balanced Chiropractic","2018-11-06 09:07:47",681,4.24,59157);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Argentinian Cuisine for Dinner or Lunch at Puerto La Boca","2018-11-18 05:26:38",475,3.66,7704);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One 60-Minute Full-Body Massage at Relaxing Massage","2018-09-28 15:30:40",4964,4.65,53738);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One or Two Months of Unlimited Classes at Yoga Six","2018-09-23 20:14:40",2217,4.67,90541);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Semi or Full Synthetic Oil-Change Package at Precision Tune Auto Care","2018-07-27 09:59:55",6617,3.13,93572);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Harbor Cruise for One, Two, or Four at Hornblower San Diego","2018-11-17 19:38:30",6668,3.02,17746);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Snorkel Package Rental for 1 or 2, or Spearfishing Package Rental for 2 at La Jolla Water Sports","2018-09-13 23:13:34",4990,4.7,63599);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Eyebrow Threading — My Brow","2018-10-26 16:30:53",341,2.84,44680);




-- DROP DATABASE IF EXISTS chat;
-- CREATE DATABASE chat;

-- USE chat;

-- DROP TABLE IF EXISTS users;
-- CREATE TABLE users (
--   id INT  NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
--   user_name VARCHAR(255)
-- );

-- DROP TABLE IF EXISTS rooms;
-- CREATE TABLE rooms (
--   id INT  NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
--   room_name VARCHAR(255)
-- );

-- DROP TABLE IF EXISTS messages;
-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   -- column FOREIGN KEY(table) REFERENCES table(column)
--   id INT  NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
--   user_id INT NOT NULL,
--   room_id INT NOT NULL,
--   msg_text VARCHAR(255),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   FOREIGN KEY (user_id) REFERENCES users(id),
--   FOREIGN KEY (room_id) REFERENCES rooms(id)
-- );

-- /* Create other tables and define schemas for them here! */

-- INSERT INTO users (user_name) VALUES ('billy');
-- INSERT INTO users (user_name) VALUES ('bobby');
-- INSERT INTO users (user_name) VALUES ('benny');
-- INSERT INTO users (user_name) VALUES ('barty');
-- INSERT INTO users (user_name) VALUES ('buddy');
-- SELECT * FROM users;


-- INSERT INTO rooms (room_name) VALUES ('billys room');
-- INSERT INTO rooms (room_name) VALUES ('bobbys room');
-- INSERT INTO rooms (room_name) VALUES ('bennys room');
-- INSERT INTO rooms (room_name) VALUES ('bartys room');
-- INSERT INTO rooms (room_name) VALUES ('buddys room');
-- SELECT * FROM rooms;

-- INSERT INTO messages (user_id, room_id, msg_text) VALUES (1, 1, 'yo wattup Im billy');
-- INSERT INTO messages (user_id, room_id, msg_text) VALUES (2, 2, 'yo wattup Im bobby');
-- INSERT INTO messages (user_id, room_id, msg_text) VALUES (3, 3, 'yo wattup Im benny');
-- INSERT INTO messages (user_id, room_id, msg_text) VALUES (4, 4, 'yo wattup Im barty');
-- INSERT INTO messages (user_id, room_id, msg_text) VALUES (5, 5, 'yo wattup Im buddy');
-- SELECT * FROM messages;
-- /*  Execute this file from the command line by typing:
--  *    mysql -u root < server/schema.sql
--  *  to create the database and the tables.*/

