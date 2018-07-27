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




INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x River Sightseeing or Sunset Tour",123,107,1,46,22);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x River Sightseeing or Sunset Tour",140,22,1,92,65);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Pass",31,6,2,177,155);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six Passes",124,13,2,708,390);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ten Passes",227,60,2,2832,2613);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Family Pack Passes",111,90,2,11328,4289);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Three x Three Hour DIY Sculpting Class",148,31,3,133,27);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Three Hour DIY Sculpting Class",371,89,3,133,33);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Three Hour DIY Sculpting Class",62,52,3,665,479);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Three Hour DIY Sculpting Class",196,163,3,665,166);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Bread-Making Class",261,97,4,137,75);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Bread-Making Class",103,57,4,137,75);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Bread-Making Class",100,97,4,548,16);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Pass",254,2,5,444,155);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ten Passes",146,124,5,1776,297);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Passes",54,45,5,7104,3854);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Splashtown Water Park Visit",353,218,6,290,222);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Whale-Watching Cruise",26,17,7,67,39);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Whale-Watching Cruise",101,82,7,201,199);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Whale-Watching Cruise",149,131,7,402,12);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x General Admission",271,155,8,58,17);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x General Admission",19,2,8,174,129);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Distillery Tour and Etched Glencairn Whiskey Glasses",147,102,9,51,49);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Distillery Tour and Etched Glencairn Whiskey Glasses",409,352,9,204,60);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x One Hour of Unlimited Bowling",55,4,10,187,7);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x One Hour of Unlimited Bowling",42,8,10,561,122);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight x One Hour of Unlimited Bowling",47,14,10,1683,1353);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x All-Day Fishing Trip",9620,3266,11,452,218);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x All-Day Fishing Trip",352,200,11,1356,573);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Full-Day Waterfall Rappelling",9880,3997,12,266,56);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Full-Day Waterfall Rappelling",368,69,12,1064,265);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Full-Day Waterfall Rappelling",253,146,12,1064,777);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Beer Tasting and Pint Glasses",72,29,13,382,327);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Beer Tasting and Pint Glasses",318,279,13,1910,358);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x Beer Tasting and Pint Glasses",360,235,13,1910,1772);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Half-Day Rock-Climbing Trip",73,59,14,431,284);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Three x Half-Day Rock-Climbing Trip",223,77,14,1293,744);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Half-Day Rock-Climbing Trip",248,77,14,6465,6320);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Premium Adventure",185,58,15,391,275);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Zipline Adventure Course Admission",271,77,16,368,177);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Zipline Adventure Course Admission",199,89,16,1472,842);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x Axe Throwing",331,37,17,166,13);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve x Axe Throwing",290,53,17,498,404);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Class",9180,2381,18,255,146);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Five Classes",26,25,18,1275,183);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Class",272,172,19,227,61);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Classes",44,39,19,1135,595);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Weeklong Pass Classes",46,3,19,3405,2927);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Zipline Canopy Tour",62,45,20,255,25);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two Passes",9730,5294,21,381,213);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four Passes",37,13,21,381,9);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",345,248,22,103,28);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Tickets",134,89,22,206,127);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Class",322,263,23,130,116);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",411,404,24,45,31);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",9820,6641,25,334,312);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",9240,3652,26,41,21);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Pass",227,178,27,344,32);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Five Passes",412,193,27,1720,482);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Passes",9650,9400,27,1720,817);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",186,116,28,391,36);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Five Tickets",7,3,28,1564,1259);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Tickets",69,31,28,3128,603);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Anniversary Deal Tickets",389,213,28,9384,7433);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",148,77,29,63,9);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Admission",9640,2783,30,376,290);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Class",425,366,31,338,172);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail",121,33,32,162,15);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail",394,297,32,810,227);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x One Hour Evening Manta Snorkeling",19,18,33,108,58);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Anniversary Deal x One Hour Evening Manta Snorkeling",9840,7737,33,540,19);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x One Hour Evening Manta Snorkeling",156,40,33,2700,464);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",439,69,34,190,107);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eight",21,4,34,380,273);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Catamaran TradeWind Sailing Trip",215,75,35,264,250);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Catamaran TradeWind Sailing Trip",26,1,35,1320,1229);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x Catamaran TradeWind Sailing Trip",229,227,35,1320,172);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",215,190,36,262,206);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six Tickets",229,2,36,1310,153);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Tickets",262,129,36,3930,315);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",215,31,37,229,87);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Twelve",161,130,37,1145,600);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental",7,5,38,377,314);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental",273,208,38,754,85);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Dolphin Snorkeling Tour",129,74,39,468,62);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Dolphin Snorkeling Tour",151,93,39,936,832);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Dolphin Snorkeling Tour",224,31,39,3744,2321);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",264,245,40,322,61);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",175,143,41,40,34);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Four",148,98,41,120,23);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eight",25,3,41,480,33);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",1,1,42,209,165);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Tickets",404,118,42,209,125);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Pass",185,130,43,365,91);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x 90-Minute Scenic Trail Ride",428,10,44,164,48);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x 90-Minute Scenic Trail Ride",398,190,44,492,473);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",385,373,45,342,10);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Five",293,66,45,1026,1008);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Seven",233,195,45,5130,3478);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Ten",9,1,45,10260,5682);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Month Pass",312,156,45,51300,8364);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",312,176,46,64,32);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",309,256,47,329,230);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eight",37,18,47,1316,967);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Twelve",83,36,47,2632,487);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",9060,1113,48,184,10);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four Tickets",71,55,48,552,378);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Nine Tickets",372,45,48,1104,193);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x 18-Hole Extreme Mini-Golf Round or Extreme Fun Pass",287,158,49,314,314);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x 18-Hole Extreme Mini-Golf Round or Extreme Fun Pass",67,9,49,1570,958);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x 18-Hole Extreme Mini-Golf Round or Extreme Fun Pass",139,40,49,1570,580);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",66,32,50,400,328);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Epic Day",378,319,51,465,76);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight x Epic Day",438,195,51,930,535);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Weeklong Pass x Epic Day",210,89,51,4650,3807);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Ground School and Tandem Jump",92,79,52,277,245);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Ground School and Tandem Jump",161,44,52,831,610);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Ground School and Tandem Jump",31,24,52,4155,3120);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",9860,1628,53,319,107);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Ten",134,124,53,1595,710);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eleven",9720,6672,53,3190,759);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",9640,2962,54,116,23);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four Tickets",378,367,54,348,190);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six Tickets",123,37,54,1740,482);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eleven Tickets",238,216,54,6960,647);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight x Wine Tours with Champagne",426,414,55,245,162);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve x Wine Tours with Champagne",154,110,55,245,39);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Fourteen x Wine Tours with Champagne",273,117,55,1225,1117);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Tickets",298,17,56,212,148);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",67,8,57,219,26);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four Tickets",402,39,57,876,329);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Tickets",29,18,57,4380,377);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Five",223,86,58,287,15);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ten x Private Daytime or Night Food Tour",292,189,59,57,3);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",318,17,60,348,261);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Twelve",69,30,60,1740,595);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Family Pack",339,149,60,8700,6623);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Three x Three-Hour Boat Tour",74,63,61,379,369);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x Three-Hour Boat Tour",9890,7300,61,379,196);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Tickets",241,236,62,415,107);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Introductory Flight Course",286,19,63,359,343);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Introductory Flight Course",128,20,63,1795,1021);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Half- or Full-Day Fishing Trip of Choice",316,160,64,384,141);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six x Two-Hour Yacht Charter",432,194,65,346,63);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two Tickets",66,63,66,145,112);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four Tickets",401,89,66,580,6);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six Tickets",168,24,66,580,123);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Haleakala Maui Zipline Tour",111,32,67,383,101);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Haleakala Maui Zipline Tour",271,47,67,1149,565);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Haleakala Maui Zipline Tour",341,294,67,5745,5051);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail",59,53,68,420,272);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Amazing Comic Con Aloha Admission",230,30,69,451,145);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ten x Amazing Comic Con Aloha Admission",216,179,69,2255,1803);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve x Amazing Comic Con Aloha Admission",340,182,69,4510,4238);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",68,61,70,141,83);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",16,15,70,282,104);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Four",348,151,70,282,272);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Two-Hour Guided Kayak Tour",72,53,71,214,87);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Two-Hour Guided Kayak Tour",411,175,71,642,301);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Performance Hybrid Bicycle Rental",325,206,72,432,233);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Performance Hybrid Bicycle Rental",183,18,72,1728,118);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Performance Hybrid Bicycle Rental",212,188,72,3456,2148);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Ticket",9480,7031,73,175,8);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Three x Ticket",215,200,73,525,372);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Month Pass x Ticket",243,220,73,1575,687);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x San Francisco Cannabis Walking Tour",96,44,74,415,67);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x San Francisco Cannabis Walking Tour",35,26,74,1245,1081);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x San Francisco Cannabis Walking Tour",220,206,74,6225,5105);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Patriot Jet Boat Thrill Ride",11,3,75,342,54);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Patriot Jet Boat Thrill Ride",140,131,75,1368,1204);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Patriot Jet Boat Thrill Ride",9370,1108,75,1368,97);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",287,169,76,203,46);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eleven",171,5,76,406,151);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Pass",398,188,77,390,20);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Twelve Passes",235,44,77,1170,366);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",9120,6834,78,110,81);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Eight",440,104,78,550,394);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Twelve",389,295,78,2200,881);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x One-Hour Shooting-Range Package",9480,4266,79,466,280);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Pirates Dinner Adventure in Buena Park",222,217,80,216,4);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x General Admission",207,173,81,101,1);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x General Admission",163,12,81,101,46);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x General Admission",35,8,81,101,88);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",118,99,82,405,31);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Ten",169,97,82,2025,825);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Two-Hour Harbor Tour",52,36,83,229,153);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Two-Hour Harbor Tour",148,61,83,916,396);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Two-Hour Harbor Tour",9040,4426,83,4580,998);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Round Trip Boat Ride to Catalina Island",379,47,84,304,115);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Nine x Round Trip Boat Ride to Catalina Island",17,8,84,608,554);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",344,32,85,324,236);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Four",391,102,85,1296,415);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Family Pack",224,153,85,5184,1634);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Eight Classes",321,42,86,388,168);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",2,2,87,388,65);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Three",133,13,87,1164,205);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Four",9270,8779,87,5820,1122);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Five",9210,3523,87,23280,898);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Seven",24,22,87,69840,61300);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",412,401,88,388,185);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",433,358,89,111,24);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Twelve",442,233,89,333,184);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",8,8,90,442,384);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Ticket",15,11,91,145,110);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Three Tickets",23,7,91,145,59);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",47,20,92,302,300);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Nine",204,188,92,604,587);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Ten",316,205,92,604,510);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",404,300,93,243,117);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Family Pack",228,170,93,729,420);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Two",143,122,93,2916,69);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Argentinian Cuisine",57,21,94,179,57);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Argentinian Cuisine",9820,6470,94,358,225);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",318,61,95,432,228);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One Class",9680,2557,96,116,12);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two Classes",162,96,96,232,153);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Six Classes",9,7,96,464,6);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",9870,1862,97,123,101);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Two-Hour Harbor Cruise",122,55,98,133,107);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Two-Hour Harbor Cruise",222,41,98,532,35);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Four x Two-Hour Harbor Cruise",72,31,98,1596,1526);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("One x Snorkel Package Rental",23,8,99,192,82);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Two x Snorkel Package Rental",341,326,99,768,328);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Family Pack x Snorkel Package Rental",76,33,99,768,249);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Ticket for One",161,116,100,113,24);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Four",345,7,100,565,336);
INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_status_id,original_price,discounted_price) VALUES ("Tickets for Ten",9810,5765,100,2260,1818);

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
--  *    mysql -u root < schema.sql
--  *  to create the database and the tables.*/

