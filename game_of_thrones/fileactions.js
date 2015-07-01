function fileActions(err, file){ 
    if (err) {
        console.log(err);
    }
    console.log("The File has been read")
    var episodes = JSON.parse(file)
   
    var sorted_episodes = episodes.sort(function(a, b)
    {
    	return (a.episode_number)-(b.episode_number);
    });

    var filtered_sorted_episodes = sorted_episodes.filter(function(episode) 
    {
    	return episode.rating >= 8.5;
    })
    filtered_sorted_episodes.forEach(function(episode) {
    	// console.log(numbers);
	    console.log("Title: " + episode.title + "Episode: #" + episode.episode_number);
	    console.log(episode.description);
	    var star_array = [];

    	for (i=1; i < parseInt(episode.rating) + 1; i++) 
		{
			star_array.push("*");
		}
		var star_string = star_array.toString()
		for (i=1; i < parseInt(episode.rating) * 2; i++) 
		{
			star_string = star_string.replace(',','');
		}
	    console.log("Rating:" + episode.rating + " " + star_string);
	    console.log('\n');		
	});
}

module.exports = fileActions








