var words = [
	"dead",         // 1st -> d
	"bygone",       // 2nd -> y
	"landing",      // 3rd -> n
	"cheaply",      // 4th -> a
	"assumed",      // 5th -> m
	"incorrectly",  // 1st -> i
	"attention",    // 2nd -> t
	"agent"         // 3rd -> e
];

var sentence = "fill the proper tank for the cow";

function decode(words){
	var index = 0,
		secretMessage = '';
	
	for( var i = 0; i<words.length; i++)
	{
		secretMessage += words[i].charAt(i%5);
		//index = (index % 5 === 0 ? 0 : index + 1);
	}

	return secretMessage;
}

function super_decode(sentence, direction)
{
	var sentence_arr = sentence.split(' ');
	var direction_arr = direction.split('-');
	var order = direction_arr[0];
	var start = direction_arr[1];
	var sanitized_arr = [];

	switch(order)
	{
		case 'even':
			sanitized_arr = sentence_arr.filter(function(word,index){
				if(index % 2 === 0){
					return word;
				}
			});
		break;
		case 'odd':
			sanitized_arr = sentence_arr.filter(function(word,index){
				if(index % 2 === 1){
					return word;
				}
			});
		break;
		case 'all':
			sanitized_arr = sentence_arr;
		break;
	}
	
	console.log(sanitized_arr);
	
	if(start === 'backwards')
		sanitized_arr = sanitized_arr.reverse();


	return decode(sanitized_arr);
}

console.log(super_decode(sentence, 'odd-backwards'));
