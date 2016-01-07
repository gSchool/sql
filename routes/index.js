var express = require('express');
var router = express.Router();
var db = require('../public/javascripts/db.js');

/* GET home page. */

router.get('/', function(req, res){
  db.runQuery('SELECT * FROM dogbreeds', function(results) {
     res.send(results.rows);
   });
});

module.exports = router;
