const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3001;

let dbHelper = require('../database/dbHelper.js');


app.use(express.static(path.join(__dirname, '../public')));

app.get('/:id', function(req, res) {
  res.sendFile(path.join(__dirname, '../public/index.html'))
});

app.get('/deal_status/:deal_id', function(req, res) {

  dbHelper.queryDB(req.params.deal_id, function(data){res.end(JSON.stringify(data))})

  // res.end(JSON.stringify({
  //   id: 1,
  //   name: 'River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company',
  //   expiration: "2018-10-27T13:46:29.000Z",
  //   views: 4350,
  //   rating: 3.01,
  //   review_count: 81489 })); //verified working at http://localhost:3001/deal_status/1
});

app.put('/deal_status/:deal_id/offers/:offer_id', function(req, res) {

  let dataCol = '';
  req.on('data', function(data){
    console.log('newDATA!:' + data);
    dataCol += data;
  })

  req.on('end', function(data){
    console.log(dataCol);
    let parsed = dataCol.split('&');
    let objBuild = {};

    console.log(parsed)


    parsed = parsed.map(function(curr, idx, arr) {
      curr = curr.split('=');
      objBuild[curr[0]] = curr[1];
    });


    parsed = objBuild;
    console.log(parsed)

    dbHelper.logReservation(req.params.offer_id, parsed.purchType);

    console.log('Update request recieved for: ' + req.params.offer_id);
    res.status(204);
    res.end();
  });

});

// EXTRA: http://localhost:3001/deal_status
// Get endpoint: returns all valid (non expired) deals
// Return: [...deals_status_objects]

// EXTRA: http://localhost:3001/deal_status
// Post endpoint: create a new deal (if valid business account)
// Creates rows in both databases as each deal needs a status and at least one offer

// http://localhost:3001/deal_status/:deal_id
// Get endpoint: db query returns deal statistics and status
// ALSO: triggers a database update for views
// Return: singular deal_status object

// http://localhost:3001/deal_status/:deal_id/offers/
// Get endpoint: db query returns all offer options associated with a deal
// Return: [...deal_offers_objects]

// http://localhost:3001/deal_status/:deal_id/offers/:offer_id
// Put endpoint: registers one less deal offer in the db



app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});