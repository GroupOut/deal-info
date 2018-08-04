var mysql = require('mysql');

var dbConnect = mysql.createConnection({
  host: process.env.RDS_HOSTNAME,
  user: process.env.RDS_USERNAME,
  database: 'nky_deal_info',
  password: process.env.RDS_PASSWORD,
  port: process.env.RDS_PORT
})

var queryDBbyIdFull = function(targetId, cbFunc) {
  let fullDeal = {};

  let sendResp = function(allData) {
    cbFunc(allData);
  };

  dbConnect.query(`Select * FROM deal_status WHERE id = ${targetId}`, (err, res) => {
    if(err) {
      throw err;
    } else {
      dbConnect.query(`UPDATE deal_status SET views = views + 1  WHERE id=${targetId}`, (err, res) => {
        if(err) {
          throw err;
        } else {
          console.log(`Target id: ${targetId}. Views++`);
        }
      });
      fullDeal.dealStatus = res[0];
      if(fullDeal.dealOffers !== void(0)){
        sendResp(fullDeal);
      }
    }
  });

  dbConnect.query(`SELECT * FROM deal_offers WHERE deal_status_id = ${targetId};`, (err, res) => {
    if (err) {
      throw err;
    } else {
      fullDeal.dealOffers = res;
      if(fullDeal.dealStatus !== void(0)){
        sendResp(fullDeal);
      }
    }
  });
}

var logReservation = function(offerId, type) {
  console.log(offerId, type)
  dbConnect.query(`UPDATE deal_offers SET claimed = claimed + 1  WHERE id=${offerId}`, (err, res) => {
    if(err){
      throw err;
    } else {
      console.log('SUCCESS!!!!! ' + res)
      console.log(res)
    }
  })
}

module.exports = {queryDB:queryDBbyIdFull, logReservation:logReservation}

// var mysql = require('mysql');

// // Create a database connection and export it from this file.
// // You will need to connect with the user "root", no password,
// // and to the database "chat".

// var databCon = mysql.createConnection({
//   host: 'localhost',
//   user: 'student',
//   password: 'student',
//   database: 'chat'
// });

// var queryDB = function( /*string,*/ cbFunc) {
//   databCon.query('SELECT m.id, m.msg_text, m.created_at, m.updated_at, u.user_name, r.room_name FROM messages m INNER JOIN users u ON m.user_id = u.id INNER JOIN rooms r ON m.room_id = r.id;', (err, res) => {
//   //AND r.room_name LIKE '%${string}%'
//     if (err) {
//       throw err;
//     } else {
//       cbFunc(res);
//       return res;
//     }

//   });

// };


// var userIDCheck = function (username, userIDcbFunc) {
//   databCon.query(`SELECT id FROM users WHERE user_name = '${username}';`, (err, res) => {
//     if (err) {
//       throw err;
//     } else {
//       if (res.length === 0) {
//         console.log(`NO USER ${username} FOUND, GENERATING ROW IN TABLE`);
//         databCon.query(`INSERT INTO users (user_name) VALUES ('${username}');`, (err, res) => {
//           if (err) {
//             throw err;
//           } else {
//             userIDcbFunc(res.insertId); // not being read from the table, but from the table row creation response directly
//           }
//         });
//       } else {
//         userIDcbFunc(res[0].id);
//         return res[0].id;
//       }
//     }
//   });
// };

// var roomIDCheck = function (roomname, roomIDcbFunc) {
//   databCon.query(`SELECT id FROM rooms WHERE room_name = '${roomname}';`, (err, res) => {
//     if (err) {
//       throw err;
//     } else {
//       if (res.length === 0) {
//         console.log(`NO ROOM ${roomname} FOUND, GENERATING ROW IN TABLE`);
//         databCon.query(`INSERT INTO rooms (room_name) VALUES ('${roomname}');`, (err, res) => {
//           if (err) {
//             throw err;
//           } else {
//             roomIDcbFunc(res.insertId); // not being read from the table, but from the table row creation response directly
//           }
//         });
//       } else {
//         console.log(res[0].id);
//         roomIDcbFunc(res[0].id);
//         return res[0].id;
//       }
//     }
//   });
// };

// var insertMessageDB = function (roomId, userId, messageText, messageInsertCb) {
//   databCon.query(`INSERT INTO messages (user_id, room_id, msg_text) VALUES (${roomId}, ${userId}, '${messageText}');`, (err, res) => {
//     if (err) {
//       throw err;
//     } else {
//       messageInsertCb(res);
//     }
//   });

// };

// module.exports.queryDB = queryDB;
// module.exports.userIDCheck = userIDCheck;
// module.exports.roomIDCheck = roomIDCheck;
// module.exports.insertMessageDB = insertMessageDB;

// // queryDBbyX('b', 'user');
// // queryDB();


// // userIDCheck('billybob', (val) => {
// //   console.log(val);
// // });