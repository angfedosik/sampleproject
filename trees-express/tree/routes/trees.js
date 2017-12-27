var express = require('express');
var faker = require('faker');

var router = express.Router();

router.get('/', function(req, res) {
  res.send([{
    "name": "tree 1",
    "price": "123",
    "city": "ieruslim",
    "height" : "543"
  },
  {
    "name": "tree 2",
    "price": "122343",
    "city": "london",
    "height" : "521"
  },
  {
    "name": "tree 3",
    "price": "123344",
    "city": "antlantida",
    "height" : "11 000"
  },
  {
    "name": "tree 0",
    "price": "588",
    "city": "new jersey",
    "height" : "54333"
  },
  {
    "name": "tree 19",
    "price": "3333333",
    "city": "bagdad",
    "height" : "99990"
  }

  ]);
});
router.get('/:tree', function(req, res) {
  res.send({ username: req.params.username,
              email: faker.internet.email(),
             format: req.query.details});
});


module.exports = router;
