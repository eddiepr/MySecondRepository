var fs = require('fs');


function slideLoader (path) {
	function print(error, content) {
		if (!error)
		{
			var slides = content.split('\n')
		} else {
			console.log('Error!!', error);
		}
	}
	fs.readFile(path, 'utf8', print);
}
	

	

module.exports = slideLoader;