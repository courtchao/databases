var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      db.query('SELECT * FROM messages', (err, results) => {
        if (err) {
          callback(err, results);
        } else {
          callback(null, results); //edit 
        }
      });
    },
    post: function () {} // a function which can be used to insert a message into the database
  },
  

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

