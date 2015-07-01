var fs = require('fs');
var fileActions = require('./fileactions')
fs.readFile("./game_of_thrones.json", 'utf8', fileActions);