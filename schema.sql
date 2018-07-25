DROP DATABASE IF EXISTS nky_deal_info;
CREATE DATABASE nky_deal_info;

USE nky_deal_info;

DROP TABLE IF EXISTS deal_status;
CREATE TABLE deal_status (
  id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  expiration DATE,
  views INT,
  rating DOUBLE,
  review_count INT
);

DROP TABLE IF EXISTS deal_offers;
CREATE TABLE deal_offers (
  id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  total_avail INT NOT NULL,
  claimed INT,
  deal_status_id INT NOT NULL,
  FOREIGN KEY (deal_status_id) REFERENCES deal_status(id)
);


INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company",2018-11-01 08:48:12,61159,4.46,39462);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Platinum Wash with Rain-X Wheel and Windshield Treatment",2018-10-06 12:17:42,35719,3.21,66497);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three Hour DIY Sculpting Class for One, Two, or Four at Play With Clay",2018-10-13 15:22:41,37215,0.52,71299);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Bread-Making Class for One, Two, or Four at Sour Flour",2018-10-25 08:30:02,87752,1.23,34691);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Painting Experiences at Muse Paintbar",2018-11-02 05:37:18,54472,3.1,40490);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Splashtown Water Park Visit for Two at Funtown Splashtown USA",2018-08-27 00:33:35,85014,3.59,30935);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Whale-Watching Cruise for One, Two, or Four from Cape Ann Whale Watch",2018-10-29 23:20:51,49281,3.56,21103);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("General Admission for Two or Four to King Richard's Faire",2018-11-07 21:00:50,71962,0.73,94670);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Distillery Tour and Etched Glencairn Whiskey Glasses for Two or Four at New England Distilling",2018-09-10 10:05:22,42512,2.52,20768);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Hour of Unlimited Bowling for Up to Four or Eight at Jimmy the Greek's Bowling and Arcade",2018-10-02 05:25:08,14119,1.35,97458);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("All-Day Fishing Trip for 1 or 2 with Rod Rental from Al Gauron Deep Sea Fishing & Whale Watching",2018-08-27 04:19:52,4813,3.39,74740);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Full-Day Waterfall Rappelling for One, Two, or Four at North Ridge Mountain Guides",2018-08-08 13:53:15,41289,3.26,69006);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beer Tasting and Pint Glasses for Two, Four, or Six at Kennebec River Pub and Brewery",2018-09-30 22:10:26,44108,4.42,44158);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Half-Day Rock-Climbing Trip for Two, Three, or Four from Acadia Mountain Guides Climbing Schoo",2018-11-03 23:36:07,37639,1.81,56570);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Premium Adventure for One Adult, Youth or Senior at Gunstock Mountain Resort",2018-10-11 17:48:05,82663,0.38,90581);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Zipline Adventure Course Admission for Two or Four at Monkey Trunks Chocorua",2018-08-11 12:25:10,91374,4.11,32486);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Axe Throwing for 6 or 12 People at Northern Axperts",2018-11-01 02:53:36,2695,2.32,76734);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beginner's Salsa-Dancing Course from SkillSuccess",2018-08-01 12:39:34,3117,0.63,8600);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Beginner-Ukulele Online Course from SkillSuccess",2018-10-07 08:55:14,56581,3.51,60807);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Zipline Canopy Tour for One at Provo Canyon Adventures",2018-09-06 04:01:36,97365,4.31,2445);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two or Four One-Hour Jump Passes at Airborne Trampoline Arena",2018-08-12 02:06:49,70620,0.47,98848);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("60-Minute Float Therapy Sessions at True Rest Float Spa",2018-08-19 01:23:19,38928,4.38,52749);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Month of Unlimited Classes Including Yoga, Hot Yoga, Barre at Mountain Yoga Sandy",2018-09-30 11:14:05,30012,3.79,17652);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One 60-Minute Massage at Aribella Salon and Spa",2018-08-25 00:48:09,27641,3.26,78535);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Turnagain Arm and Alaska Wildlife Tour from Anchorage",2018-10-06 06:20:54,24106,2.02,26137);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage to Seward Cruise Transfer and Private Tour",2018-07-27 20:01:02,78556,0.94,1084);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Jump Passes or Party at Get Air",2018-08-01 04:49:25,5234,4.91,47766);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage City Tour with Alaska Native Heritage Center",2018-08-16 02:49:52,89436,2.88,9468);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Juneau Shore Excursion: Whale-Watching Excursion",2018-08-29 17:25:03,33735,2.45,61420);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Admission for One Child or Adult to Aquarium of the Bay",2018-08-09 02:16:45,63462,3.48,72367);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("First-Aid, CPR, and AED Certification Course from Advanced Medical Certification",2018-11-08 09:45:09,67822,3.18,76626);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran",2018-11-10 12:42:28,933,1.16,26658);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Hour Evening Manta Snorkeling for One or Two at Hawaii Island And Ocean Tours",2018-07-27 23:29:31,92140,0.6,52252);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Semi-Private and Private Surf Lessons at Moku Surf Rentals & Board Shop",2018-10-14 11:23:09,45659,4.96,66831);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Catamaran TradeWind Sailing Trip for Two, Four, or Six from Maita`i Catamaran",2018-09-19 00:50:45,43856,3.56,85035);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("25-minute RHS Distillery Micro Tour and Tasting with Optional Take-Home Bottle at RHS Distillery",2018-10-29 05:07:35,44922,3.96,40997);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Maui Sunset Dinner Cruise",2018-08-05 03:40:47,62471,1.98,46643);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental for One or Two from Twogood Kayaks",2018-08-14 09:32:35,89643,3.36,66358);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Dolphin Snorkeling Tour for One, Two, or Four at EO Waianae Tours",2018-10-25 17:18:45,2350,3.98,78634);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pearl Harbor & Arizona Memorial Tour with Transportation from Aloha Pearl Harbor Tour",2018-11-02 14:31:16,53756,2.64,62111);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Resurrection Bay Cruise with Fox Island",2018-09-02 08:43:37,19571,2.98,68940);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Full-Day Tour or Overnight Trip from Miller Landing",2018-11-13 11:45:27,42843,2.06,39203);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Alaskan Bush Plane Piloting Experience with In-flight Instruction at Legends Alaska",2018-09-06 07:06:30,9007,1.43,17855);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("90-Minute Scenic Trail Ride for Two or Four at Sunderland Ranch",2018-11-07 03:52:19,47850,4.14,23579);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Nenana Gorge Whitewater Rafting - Oar Option",2018-09-30 14:42:07,55175,3.96,53111);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Anchorage Northern Lights Tour",2018-09-05 02:53:53,10793,3.81,53493);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Grand Denali Flightseeing tour from Talkeetna",2018-09-26 18:39:09,64292,4.71,9784);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Helicopter and Glacier Dogsled Tour",2018-10-31 21:34:02,41,4.48,92631);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("18-Hole Extreme Mini-Golf Round or Extreme Fun Pass for Two, Four, or Six at Putters Wild",2018-10-24 05:44:12,47551,3.84,31369);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("2015 Vespa Primavera 150 Scooter at Rockridge Two Wheels and Vespa Walnut Creek",2018-09-23 18:05:09,65403,3.91,26414);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Epic Day on The Bay! Create your own extreme yacht party with Flyboarding, Zorbing and more!",2018-10-19 01:39:44,78760,1.78,47007);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Ground School and Tandem Jump for One, Two, or Four from 9,000 or 13,000 Feet from Skydive Sacramento",2018-08-04 10:03:38,3210,3.12,59830);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pool Day or Rental from Sapphire Pool & Day Club",2018-09-10 21:42:19,45437,3.34,28275);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Helicopter Tour at Specialized Helicopters",2018-08-10 17:34:02,1739,0.15,26081);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Wine Tours with Champagne for Up to 8, 12, or 14 Passengers from Event And Tours",2018-08-27 05:29:19,45672,2.18,41067);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("8 Hour Private Sonoma or Napa Wine Tasting Tour (Sedan, SUV or Limo)",2018-08-25 19:09:55,48031,0.01,68735);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Winery Tour in Limousine, SUV, Limousine Bus, or Sprinter from Event Logistic",2018-09-21 18:05:58,44599,0.2,68943);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Five Hours of Large-Group Luxury Transportation from Edda Limousine Service",2018-08-11 02:46:18,32825,3.4,54333);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Private Daytime or Night Food Tour for Up to 10 People at Team Building Food Tours",2018-07-28 07:32:00,24917,2.69,25604);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Six-Hour Day Camp",2018-09-26 02:44:08,88454,0.03,14801);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three-Hour Boat Tour for Three or Eight-Hour Private Boat Tour for Six from Bay Expeditions",2018-09-10 03:11:57,10495,3.6,42576);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Three-Hour Guided Electric Bike Tour For Eight People from Eco Bike Adventures",2018-11-13 08:59:15,27026,0.92,70287);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Introductory Flight Course for One or Two People",2018-09-20 14:24:23,36727,4.59,92486);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Half- or Full-Day Fishing Trip of Choice for Up to Two",2018-09-07 01:54:23,4801,4.56,80951);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Yacht Charter for Up to Six with America Cup Charters",2018-09-07 09:16:45,53361,2.76,368);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two, Four, or Six Tours of Surfing Goat Dairy",2018-11-01 16:52:35,56523,3.22,3041);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Haleakala Maui Zipline Tour for One, Two, or Four at Skyline Eco-Adventures",2018-07-27 20:04:41,65834,1.32,85312);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran",2018-09-16 10:23:24,73563,4.49,31991);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Amazing Comic Con Aloha Admission on August 24, 25, or 26",2018-10-15 00:38:07,94845,1.24,36714);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One, Two, or Four Tickets to USS Bowfin Submarine Museum & Park",2018-08-11 02:42:02,72762,1.02,7543);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Guided Kayak Tour for One or Two from San Francisco Kayak & Adventures",2018-08-12 12:18:17,77391,2.12,3899);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Performance Hybrid Bicycle Rental for One, Two, or Four at Bay City Bike",2018-08-14 18:32:53,59865,0.73,86272);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Ticket for Any Sailing Tour at San Francisco Sailing Company",2018-09-02 08:01:30,49762,3.31,31959);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("San Francisco Cannabis Walking Tour for One, Two, or Four at Explore San Francisco",2018-11-11 07:19:07,49565,3.67,44624);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Patriot Jet Boat Thrill Ride for One, Two, or Four at Flagship Cruises & Events",2018-10-21 03:32:53,85471,4.81,18738);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Whale Watching and Dolphin Cruise from Davey's Locker",2018-08-24 01:10:38,6176,4.65,12342);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("90-Minute Passes, Urban Tot or Early Bird, at Uptown Jungle Fun Park",2018-09-18 01:01:04,41684,2.16,47154);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Wash and Cut with Tossle Dry or with All-Over Color or Partial Highlights at Fantastic Sams",2018-08-14 21:51:51,62906,2.62,74012);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One-Hour Shooting-Range Package for Two at P2K Range",2018-10-11 10:46:49,8710,0.1,68182);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Pirates Dinner Adventure in Buena Park for One Adult or Child",2018-10-01 16:13:26,72908,3.73,84142);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("General Admission for One, Two, or Four to The Wave Waterpark ",2018-07-29 15:22:34,60723,3.45,49049);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Online Driver's Ed with DMV Completion Certificate from MyCaliforniaPermit.com",2018-10-29 21:57:42,94673,2.9,54344);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Harbor Tour for One, Two, or Four from Flagship Cruises and Events",2018-08-23 11:35:58,39594,3.77,35403);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Round Trip Boat Ride to Catalina Island on The Catalina Flyer from Newport Beach ",2018-09-16 00:38:11,99131,0.75,11277);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Oil Change at SynFast Oil Change",2018-10-18 16:56:02,80963,3.31,87122);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("8 Pilates Classes at Pilates Room Studios",2018-08-16 00:50:57,62387,0.61,35297);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two, Three, Four, Five, or Seven Days of Airport or Seaport Parking at Laurel Parking",2018-08-11 04:57:50,21451,2.97,62070);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two Days of Airport Parking at Aladdin Airport Parking",2018-10-19 10:05:25,35109,4.12,6125);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Brazilian or Bikini Wax at Gigi's Beauty Boutique",2018-11-12 11:04:16,79179,1.52,31283);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two Craft Beers and a Slice of Pizza at Berkeley Pizza",2018-11-04 13:41:06,59889,0.48,10083);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One or Three Eyebrow Threading Sessions at Brazilia Skin Care",2018-09-24 20:47:28,90733,4.55,27691);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Four-Week Medical Weight-Loss Package at Empower Weight Loss",2018-08-16 01:40:22,9134,4.01,85113);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One Consultation with Exam and One or Two Adjustments at Well-Balanced Chiropractic",2018-10-27 04:38:57,50700,3.06,90346);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Argentinian Cuisine for Dinner or Lunch at Puerto La Boca",2018-09-13 18:19:28,56375,1.64,69702);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One 60-Minute Full-Body Massage at Relaxing Massage",2018-08-30 06:39:22,51249,4.65,74041);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("One or Two Months of Unlimited Classes at Yoga Six",2018-08-11 11:49:01,66734,2.29,88871);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Semi or Full Synthetic Oil-Change Package at Precision Tune Auto Care",2018-10-16 09:36:19,13989,0.93,69752);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Two-Hour Harbor Cruise for One, Two, or Four at Hornblower San Diego",2018-10-28 00:01:24,63721,1.1,79014);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Snorkel Package Rental for 1 or 2, or Spearfishing Package Rental for 2 at La Jolla Water Sports",2018-10-10 19:02:39,17271,0.94,8826);
INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("Eyebrow Threading — My Brow",2018-08-10 05:57:05,82772,3.18,62305);


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
--  *    mysql -u student < server/schema.sql
--  *  to create the database and the tables.*/

