var fs = require('fs'),
	// Post = require('./post'),
	// SponsoredPost = require('./sponsored_post'),
	fileActions = require('./fileactions');


	fs.readFile("./info.json", 'utf8', fileActions);

// function fileActions (err, file) {
// 	if (err) {
// 		console.log(err);
// 	}
// 	var posting = JSON.parse(file);
// 	posting.each.display();
// }












