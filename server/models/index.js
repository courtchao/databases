var db = require('../db');

module.exports = {
  messages: {
    get: function (req, res) {
      db.query('SELECT * FROM messages'), (err, results) => {
        if (err) {
          console.log('There was an error trying to get messages');
        } else {
          callback(results); //edit 
        }
      };
    },
    post: function () {} // a function which can be used to insert a message into the database
  },
  

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

