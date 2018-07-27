








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