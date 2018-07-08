var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      var defaultCorsHeaders = {
        'access-control-allow-origin': '*',
        'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
        'access-control-allow-headers': 'content-type, accept',
        'access-control-max-age': 10 // Seconds.
      };
      models.messages.get((err, results) => {
        if (err) {
          res.send(err);
        } else {
          res.set(defaultCorsHeaders);
          res.send(results);
        }
      });
      // array of message objects
    }, // a function which handles a get request for all messages
    post: function (req, res) {} // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

