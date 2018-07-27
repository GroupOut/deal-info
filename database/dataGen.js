let generateDealStatusLine = function(name){

  let dealName = name;
  let sqlDate = new Date(Date.parse(new Date())+Math.floor(Math.random() * 9999999999)).toISOString().slice(0,19).replace('T', ' ');
  let views = Math.floor(Math.random()*9999);
  if(views <= 8999) {
    views = Math.floor(views / 10);
  }
  let rating = Math.floor(Math.random()*501)/100;
  let rnJesus = 5;
  while(rating <= 2.5 && rnJesus !== 0) {
    rating = Math.floor(Math.random()*501)/100;
    rnJesus = Math.floor(Math.random()*10);
  }
  let reviewCount = Math.floor(Math.random()*9999);
  if(reviewCount <= 8999) {
    reviewCount = Math.floor(reviewCount / 75);
  }

  let rowString = `INSERT INTO deal_status (name,expiration,views,rating,review_count) VALUES ("${dealName}","${sqlDate}",${views},${rating},${reviewCount});`;

  return rowString;
}

let collectedNames = ['River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company','Platinum Wash with Rain-X Wheel and Windshield Treatment','Three Hour DIY Sculpting Class for One, Two, or Four at Play With Clay','Bread-Making Class for One, Two, or Four at Sour Flour','Painting Experiences at Muse Paintbar','Splashtown Water Park Visit for Two at Funtown Splashtown USA','Whale-Watching Cruise for One, Two, or Four from Cape Ann Whale Watch','General Admission for Two or Four to King Richard\'s Faire','Distillery Tour and Etched Glencairn Whiskey Glasses for Two or Four at New England Distilling','One Hour of Unlimited Bowling for Up to Four or Eight at Jimmy the Greek\'s Bowling and Arcade','All-Day Fishing Trip for 1 or 2 with Rod Rental from Al Gauron Deep Sea Fishing & Whale Watching','Full-Day Waterfall Rappelling for One, Two, or Four at North Ridge Mountain Guides','Beer Tasting and Pint Glasses for Two, Four, or Six at Kennebec River Pub and Brewery','Half-Day Rock-Climbing Trip for Two, Three, or Four from Acadia Mountain Guides Climbing Schoo','Premium Adventure for One Adult, Youth or Senior at Gunstock Mountain Resort','Zipline Adventure Course Admission for Two or Four at Monkey Trunks Chocorua','Axe Throwing for 6 or 12 People at Northern Axperts','Beginner\'s Salsa-Dancing Course from SkillSuccess','Beginner-Ukulele Online Course from SkillSuccess','Zipline Canopy Tour for One at Provo Canyon Adventures','Two or Four One-Hour Jump Passes at Airborne Trampoline Arena','60-Minute Float Therapy Sessions at True Rest Float Spa','Month of Unlimited Classes Including Yoga, Hot Yoga, Barre at Mountain Yoga Sandy','One 60-Minute Massage at Aribella Salon and Spa','Turnagain Arm and Alaska Wildlife Tour from Anchorage','Anchorage to Seward Cruise Transfer and Private Tour','Jump Passes or Party at Get Air','Anchorage City Tour with Alaska Native Heritage Center','Juneau Shore Excursion: Whale-Watching Excursion','Admission for One Child or Adult to Aquarium of the Bay','First-Aid, CPR, and AED Certification Course from Advanced Medical Certification','Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran','One Hour Evening Manta Snorkeling for One or Two at Hawaii Island And Ocean Tours','Semi-Private and Private Surf Lessons at Moku Surf Rentals & Board Shop','Catamaran TradeWind Sailing Trip for Two, Four, or Six from Maita`i Catamaran','25-minute RHS Distillery Micro Tour and Tasting with Optional Take-Home Bottle at RHS Distillery','Maui Sunset Dinner Cruise','Guided Kayak Tour with Snorkeling and Lunch or Kayak Rental for One or Two from Twogood Kayaks','Dolphin Snorkeling Tour for One, Two, or Four at EO Waianae Tours','Pearl Harbor & Arizona Memorial Tour with Transportation from Aloha Pearl Harbor Tour','Resurrection Bay Cruise with Fox Island','Full-Day Tour or Overnight Trip from Miller Landing','Alaskan Bush Plane Piloting Experience with In-flight Instruction at Legends Alaska','90-Minute Scenic Trail Ride for Two or Four at Sunderland Ranch','Nenana Gorge Whitewater Rafting - Oar Option','Anchorage Northern Lights Tour','Grand Denali Flightseeing tour from Talkeetna','Helicopter and Glacier Dogsled Tour','18-Hole Extreme Mini-Golf Round or Extreme Fun Pass for Two, Four, or Six at Putters Wild','2015 Vespa Primavera 150 Scooter at Rockridge Two Wheels and Vespa Walnut Creek','Epic Day on The Bay! Create your own extreme yacht party with Flyboarding, Zorbing and more!','Ground School and Tandem Jump for One, Two, or Four from 9,000 or 13,000 Feet from Skydive Sacramento','Pool Day or Rental from Sapphire Pool & Day Club','Helicopter Tour at Specialized Helicopters','Wine Tours with Champagne for Up to 8, 12, or 14 Passengers from Event And Tours','8 Hour Private Sonoma or Napa Wine Tasting Tour (Sedan, SUV or Limo)','Winery Tour in Limousine, SUV, Limousine Bus, or Sprinter from Event Logistic','Five Hours of Large-Group Luxury Transportation from Edda Limousine Service','Private Daytime or Night Food Tour for Up to 10 People at Team Building Food Tours','Six-Hour Day Camp','Three-Hour Boat Tour for Three or Eight-Hour Private Boat Tour for Six from Bay Expeditions','Three-Hour Guided Electric Bike Tour For Eight People from Eco Bike Adventures','Introductory Flight Course for One or Two People','Half- or Full-Day Fishing Trip of Choice for Up to Two','Two-Hour Yacht Charter for Up to Six with America Cup Charters','Two, Four, or Six Tours of Surfing Goat Dairy','Haleakala Maui Zipline Tour for One, Two, or Four at Skyline Eco-Adventures','Afternoon Sail, Dinner Cruise, or Snorkeling & Lunch Sail for a Child or Adult from Makani Catamaran','Amazing Comic Con Aloha Admission on August 24, 25, or 26','One, Two, or Four Tickets to USS Bowfin Submarine Museum & Park','Two-Hour Guided Kayak Tour for One or Two from San Francisco Kayak & Adventures','Performance Hybrid Bicycle Rental for One, Two, or Four at Bay City Bike','Ticket for Any Sailing Tour at San Francisco Sailing Company','San Francisco Cannabis Walking Tour for One, Two, or Four at Explore San Francisco','Patriot Jet Boat Thrill Ride for One, Two, or Four at Flagship Cruises & Events','Whale Watching and Dolphin Cruise from Davey\'s Locker','90-Minute Passes, Urban Tot or Early Bird, at Uptown Jungle Fun Park','Wash and Cut with Tossle Dry or with All-Over Color or Partial Highlights at Fantastic Sams','One-Hour Shooting-Range Package for Two at P2K Range','Pirates Dinner Adventure in Buena Park for One Adult or Child','General Admission for One, Two, or Four to The Wave Waterpark ','Online Driver\'s Ed with DMV Completion Certificate from MyCaliforniaPermit.com','Two-Hour Harbor Tour for One, Two, or Four from Flagship Cruises and Events','Round Trip Boat Ride to Catalina Island on The Catalina Flyer from Newport Beach ','Oil Change at SynFast Oil Change','8 Pilates Classes at Pilates Room Studios','Two, Three, Four, Five, or Seven Days of Airport or Seaport Parking at Laurel Parking','Two Days of Airport Parking at Aladdin Airport Parking','Brazilian or Bikini Wax at Gigi\'s Beauty Boutique','Two Craft Beers and a Slice of Pizza at Berkeley Pizza','One or Three Eyebrow Threading Sessions at Brazilia Skin Care','Four-Week Medical Weight-Loss Package at Empower Weight Loss','One Consultation with Exam and One or Two Adjustments at Well-Balanced Chiropractic','Argentinian Cuisine for Dinner or Lunch at Puerto La Boca','One 60-Minute Full-Body Massage at Relaxing Massage','One or Two Months of Unlimited Classes at Yoga Six','Semi or Full Synthetic Oil-Change Package at Precision Tune Auto Care','Two-Hour Harbor Cruise for One, Two, or Four at Hornblower San Diego','Snorkel Package Rental for 1 or 2, or Spearfishing Package Rental for 2 at La Jolla Water Sports','Eyebrow Threading — My Brow'];

// collectedNames.map(function(c, i, a){
//   console.log(generateDealStatusLine(c));
// });

let generateDealOfferLines = function(name, index) {
  // console.log(name)

  randomBonus = ['Annual Pass','Month Pass', 'Weeklong Pass', 'Family Pack', 'Anniversary Deal']

  let offerDict = {
    one : 'One',
    two : 'Two',
    three : 'Three',
    four :  'Four',
    five : 'Five',
    six : 'Six',
    seven : 'Seven',
    eight : 'Eight',
    nine : 'Nine',
    ten : 'Ten',
    eleven : 'Eleven',
    twelve : 'Twelve',
    thirteen : 'Thirteen',
    fourteen : 'Fourteen',
    fifteen : 'Fifteen',
    sixteen : 'Sixteen',
    seventeen : 'Seventeen',
    eighteen : 'Eighteen',
    nineteen : 'Nineteen',
    twenty : 'Twenty',
    1 : 'One',
    2 : 'Two',
    3 : 'Three',
    4 : 'Four',
    5 : 'Five',
    6 : 'Six',
    7 : 'Seven',
    8 : 'Eight',
    9 : 'Nine',
    10 : 'Ten',
    11 : 'Eleven',
    12 : 'Twelve',
    13 : 'Thirteen',
    14 : 'Fourteen',
    15 : 'Fifteen',
    16 : 'Sixteen',
    17 : 'Seventeen',
    18 : 'Eighteen',
    19 : 'Nineteen',
    20 : 'Twenty'
  };

  filteredOpts = [];

  name.split(' ').map(function(c, i, a) {
    let curr = c.replace(/\W/g, '').toLowerCase();
    if (offerDict[curr] !== void(0)) {
      filteredOpts.push(offerDict[curr]);
      offerDict[curr] = randomBonus[Math.floor(Math.random() * randomBonus.length)];
    }
  });

  if (filteredOpts.length === 0) {
    let optRoll = Math.ceil(Math.random() * 4);
    if(optRoll === 4){
      if(Math.ceil(Math.random()*2) === 1) {
        optRoll--;
      } else if (Math.ceil(Math.random()*4) === 1) {
        optRoll++;
      }
    }

    let rolledOpts = [];
    for(let i = 0; i < optRoll; i++) {
      let randomRoll = Math.ceil(Math.random() * 12);
      if((randomRoll % 2) === 1){
        if(Math.ceil(Math.random()*3) === 1) {
          randomRoll++;
        } else if (Math.ceil(Math.random()*2) === 1) {
          randomRoll = ([1,4,8,12])[Math.floor(Math.random() * 4)];
        }
      }
      rolledOpts.push(randomRoll);
    }

    rolledOpts.sort(function(a,b){return a-b});
    if(rolledOpts[0] !== 1) {
      rolledOpts[0] = 1;
    }

    for(let j = 0; j < optRoll; j++){
      if (offerDict[rolledOpts[j]] !== void(0)) {
        filteredOpts.push(offerDict[rolledOpts[j]]);
        offerDict[rolledOpts[j]] = randomBonus[Math.floor(Math.random() * randomBonus.length)];
      }
    }

  }

  let offerName = '';
  let totalAvail = ''; //randomInt
  let claimed = ''; //randomInt < avail
  let originalPrice = ''; //randomDbl
  let newPrice =''; //x% of originalPrice -> dbl



  for (let k = 0; k < filteredOpts.length; k++) {
    offerName = filteredOpts[k];
    if (name.indexOf(' for ') !== -1) {
      offerName += ' x ' + name.split(' for ')[0];
    } else if (name.indexOf(' on ') !== -1) {
      offerName += ' x ' + name.split(' on ')[0];
    } else if (name.indexOf('Class') !== -1) {
      if (filteredOpts[k] === 'One') {
        offerName += ' Class';
      } else {
        offerName += ' Classes';
      }
    } else if (name.indexOf('Treatment') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Pass';
      } else {
        offerName += ' Passes';
      }

    } else if (name.indexOf('Experience') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Pass';
      } else {
        offerName += ' Passes';
      }

    } else if (name.indexOf('Course') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Class';
      } else {
        offerName += ' Classes';
      }

    } else if (name.indexOf('Passes') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Pass';
      } else {
        offerName += ' Passes';
      }

    } else if (name.indexOf('Session') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Ticket';
      } else {
        offerName += ' Tickets';
      }

    } else if (name.indexOf('Tour') !== -1) {
      if(filteredOpts[k] === 'One') {
        offerName += ' Ticket';
      } else {
        offerName += ' Tickets';
      }

    } else {
      if(filteredOpts[k] === 'One') {
        offerName = 'Ticket for ' +filteredOpts[k] ;
      } else if (randomBonus.indexOf(filteredOpts[k]) === -1) {
        offerName = 'Tickets for ' + filteredOpts[k];
      } else {

      }
    }

    totalAvail = Math.floor(Math.random() * 999);
    if(totalAvail > 900) {
      totalAvail *= 10;
    } else {
      totalAvail = Math.ceil(totalAvail/2);
    }

    claimed = Math.ceil(Math.random() * totalAvail);

    if(typeof originalPrice === 'string'){
      originalPrice = (Math.ceil(Math.random()*9000));
      if(originalPrice < 9000) {
        originalPrice = 20 + Math.ceil(originalPrice/20);
      }
    } else {
      originalPrice = Math.ceil(Math.random() * 5) * originalPrice;
    }

    newPrice = Math.ceil(Math.random() * originalPrice);


    let rowString = `INSERT INTO deal_offers (offer_name,total_avail,claimed,deal_id,original_price,discounted_price) VALUES ("${offerName}",${totalAvail},${claimed},${index+1},${originalPrice},${newPrice});`

    console.log(rowString);
  };

  // if(name.indexOf(' for ') !== -1){
  //   let opts = name.split(' for ')[1].split(' at ')[0].split(', ');
  //   var filteredOpts = [];
  //   console.log(name, opts);
  //   opts.map(function(c, i, a) {
  //     // console.log(c);
  //     let newStuff = c.split('or ');
  //     if(newStuff.length >= 2) {
  //       if(newStuff[0] === '' || newStuff[0] === ' ') {
  //         // console.log(newStuff[1].split(' ')[0]);
  //         filteredOpts.push(newStuff[1].split(' ')[0]);
  //       } else {
  //         if(Array.isArray(newStuff)) {
  //           // console.log('ARR: ' + newStuff);
  //           filteredOpts.concat(newStuff);
  //         } else {
  //           // console.log('not arr: ' + newStuff);
  //           filteredOpts.push(newStuff);
  //         }
  //       }
  //     } else {
  //       filteredOpts.push(newStuff[0]);
  //     }
  //   });
  //   console.log(filteredOpts);
  //   // console.log(name)
  //   // console.log(opts);

  // } else if (name.indexOf(' on ') !== -1) {
  //   // ONE OR TWO
  //   // console.log(name);
  //   // console.log(name.split(' on ')[0]);
  // } else if (name.indexOf(' or ') !== -1) {
  //   // console.log(name.split(' or ')[1]);
  // } else {
  //   // console.log(index);
  // }

}


collectedNames.map(function(c, i, a){
  generateDealOfferLines(c, i);
});