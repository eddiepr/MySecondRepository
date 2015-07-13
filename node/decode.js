function decode(words) {
	var index = 0,
		secretMessage = '';

	for (var i=0; i<words.length; i++) 
	{
		secretMessage += words[i].charAt(index);
		index++;
		if (index % 5 === 0)
		{
			index = 0;
		}
	}
	return secretMessage;
};

module.exports = decode;