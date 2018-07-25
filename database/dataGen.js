let generateDealStatusLine = function(name){

  let dealName = name;
  let sqlDate = new Date(Date.parse(new Date())+Math.floor(Math.random() * 9999999999)).toISOString().slice(0,19).replace('T', ' ');
  let views = Math.floor(Math.random()*9999);
  let rating = Math.floor(Math.random()*501)/100;
  let rnJesus = 5;
  while(rating <= 2.5 && rnJesus !== 0) {
    rating = Math.floor(Math.random()*501)/100;
    rnJesus = Math.floor(Math.random()*10);
  }
  let reviewCount = Math.floor(Math.random()*99999);

  let rowString = `INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("${dealName}",${sqlDate},${views},${rating},${reviewCount});`;

  return rowString;
}

let collectedNames = ['River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company','Platinum Wash with Rain-X Wheel and Windshield Treatment','Three Hour DIY Sculpting Class for One, Two, or Four at Play With Clay','Bread-Making Class for One, Two, or Four at Sour Flour','Painting Experiences at Muse Paintbar','Splashtown Water Park Visit for Two at Funtown Splashtown USA','Whale-Watching Cruise for One, Two, or Four from Cape Ann Whale Watch','General Admission for Two or Four to King Richard\'s Faire','Distillery Tour and Etched Glencairn Whiskey Glasses for Two or Four at New England Distilling','One Hour of Unlimited Bowling for Up to Four or Eight at Jimmy the Greek\'s Bowling and Arcade','All-Day Fishing Trip for 1 or 2 with Rod Rental from Al Gauron Deep Sea Fishing & Whale Watching','Full-Day Waterfall Rappelling for One, Two, or Four at North Ridge Mountain Guides','Beer Tasting and Pint Glasses for Two, Four, or Six at Kennebec River Pub and Brewery','Half-Day Rock-Climbing Trip for Two, Three, or Four from Acadia Mountain Guides Climbing Schoo','Premium Adventure for One Adult, Youth or Senior at Gunstock Mountain Resort','Zipline Adventure Course Admission for Two or Four at Monkey Trunks Chocorua','Axe Throwing for 6 or 12 People at Northern Axperts','Beginner\'s Salsa-Dancing Course from SkillSuccess','Beginner-Ukulele Online Course from SkillSuccess','Zipline Canopy Tour for One at Provo Canyon Adventures','Two or Four One-Hour Jump Passes at Airborne Trampoline Arena','60-Minute Float Therapy Sessions at True Rest Float Spa','Month of Unlimited Classes Including Yoga, Hot Yoga, Barre at Mountain Yoga Sandy','One 60-Minute Massage at Aribella Salon and Spa','Turnagain Arm and Alaska Wildlife Tour from Anchorage','Anchorage to Seward Cruise Transfer and Private Tour','Jump Passes or Party at Get Air','Anchorage City Tour with Alaska Native Heritage Center','Juneau Shore Excursion: Whale-Watching Excursion','Admission for One Child or Adult to Aquarium of the Bay','First-Aid, CPR, and AED Certification Course from Advanced Medical Certification','Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran','One Hour Evening Manta Snorkeling for One or Two at Hawaii Island And Ocean Tours','Semi-Private and Private Surf Lessons at Moku Surf Rentals & Board Shop','Catamaran TradeWind Sailing Trip for Two, Four, or Six from Maita`i Catamaran','25-minute RHS Distillery Micro Tour and Tasting with Optional Take-Home Bottle at RHS Distillery','Maui Sunset Dinner Cruise','Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental for One or Two from Twogood Kayaks','Dolphin Snorkeling Tour for One, Two, or Four at EO Waianae Tours','Pearl Harbor & Arizona Memorial Tour with Transportation from Aloha Pearl Harbor Tour','Resurrection Bay Cruise with Fox Island','Full-Day Tour or Overnight Trip from Miller Landing','Alaskan Bush Plane Piloting Experience with In-flight Instruction at Legends Alaska','90-Minute Scenic Trail Ride for Two or Four at Sunderland Ranch','Nenana Gorge Whitewater Rafting - Oar Option','Anchorage Northern Lights Tour','Grand Denali Flightseeing tour from Talkeetna','Helicopter and Glacier Dogsled Tour','18-Hole Extreme Mini-Golf Round or Extreme Fun Pass for Two, Four, or Six at Putters Wild','2015 Vespa Primavera 150 Scooter at Rockridge Two Wheels and Vespa Walnut Creek','Epic Day on The Bay! Create your own extreme yacht party with Flyboarding, Zorbing and more!','Ground School and Tandem Jump for One, Two, or Four from 9,000 or 13,000 Feet from Skydive Sacramento','Pool Day or Rental from Sapphire Pool & Day Club','Helicopter Tour at Specialized Helicopters','Wine Tours with Champagne for Up to 8, 12, or 14 Passengers from Event And Tours','8 Hour Private Sonoma or Napa Wine Tasting Tour (Sedan, SUV or Limo)','Winery Tour in Limousine, SUV, Limousine Bus, or Sprinter from Event Logistic','Five Hours of Large-Group Luxury Transportation from Edda Limousine Service','Private Daytime or Night Food Tour for Up to 10 People at Team Building Food Tours','Six-Hour Day Camp','Three-Hour Boat Tour for Three or Eight-Hour Private Boat Tour for Six from Bay Expeditions','Three-Hour Guided Electric Bike Tour For Eight People from Eco Bike Adventures','Introductory Flight Course for One or Two People','Half- or Full-Day Fishing Trip of Choice for Up to Two','Two-Hour Yacht Charter for Up to Six with America Cup Charters','Two, Four, or Six Tours of Surfing Goat Dairy','Haleakala Maui Zipline Tour for One, Two, or Four at Skyline Eco-Adventures','Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran','Amazing Comic Con Aloha Admission on August 24, 25, or 26','One, Two, or Four Tickets to USS Bowfin Submarine Museum & Park','Two-Hour Guided Kayak Tour for One or Two from San Francisco Kayak & Adventures','Performance Hybrid Bicycle Rental for One, Two, or Four at Bay City Bike','Ticket for Any Sailing Tour at San Francisco Sailing Company','San Francisco Cannabis Walking Tour for One, Two, or Four at Explore San Francisco','Patriot Jet Boat Thrill Ride for One, Two, or Four at Flagship Cruises & Events','Whale Watching and Dolphin Cruise from Davey\'s Locker','90-Minute Passes, Urban Tot or Early Bird, at Uptown Jungle Fun Park','Wash and Cut with Tossle Dry or with All-Over Color or Partial Highlights at Fantastic Sams','One-Hour Shooting-Range Package for Two at P2K Range','Pirates Dinner Adventure in Buena Park for One Adult or Child','General Admission for One, Two, or Four to The Wave Waterpark ','Online Driver\'s Ed with DMV Completion Certificate from MyCaliforniaPermit.com','Two-Hour Harbor Tour for One, Two, or Four from Flagship Cruises and Events','Round Trip Boat Ride to Catalina Island on The Catalina Flyer from Newport Beach ','Oil Change at SynFast Oil Change','8 Pilates Classes at Pilates Room Studios','Two, Three, Four, Five, or Seven Days of Airport or Seaport Parking at Laurel Parking','Two Days of Airport Parking at Aladdin Airport Parking','Brazilian or Bikini Wax at Gigi\'s Beauty Boutique','Two Craft Beers and a Slice of Pizza at Berkeley Pizza','One or Three Eyebrow Threading Sessions at Brazilia Skin Care','Four-Week Medical Weight-Loss Package at Empower Weight Loss','One Consultation with Exam and One or Two Adjustments at Well-Balanced Chiropractic','Argentinian Cuisine for Dinner or Lunch at Puerto La Boca','One 60-Minute Full-Body Massage at Relaxing Massage','One or Two Months of Unlimited Classes at Yoga Six','Semi or Full Synthetic Oil-Change Package at Precision Tune Auto Care','Two-Hour Harbor Cruise for One, Two, or Four at Hornblower San Diego','Snorkel Package Rental for 1 or 2, or Spearfishing Package Rental for 2 at La Jolla Water Sports','Eyebrow Threading — My Brow'];

collectedNames.map(function(c, i, a){
  console.log(generateDealStatusLine(c));
});

let generateDealOfferLine = function(name) {

  let rowString = `INSERT INTO deal_offers () VALUES ();`
}