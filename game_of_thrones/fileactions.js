

// function fileactions(err, file){ 
//     if (err) {
//         throw err;
//     }
//     var episodes = JSON.parse(file)
//     display(episodes)
// }

// function display(episodes){
// 	console.log(episodes[0])
// }




function fileActions(err, file){ 
    if (err) {
        console.log(err);
    }
    var episodes = JSON.parse(file)

    // var stars = function (episode) {
    // 	var rate = episode.rating;
    // 	for (i=1; i < parseInt(rate) + 1; i++)
    // 	{
    // 		return "*"
    // 	}
    // }

    episodes.forEach(function(episode) {
	    console.log("Title: " + episode.title + "Episode: #" + episode.episode_number);
	    console.log(episode.description);
	    var star_array = [];
    	for (i=1; i < parseInt(episode.rating) + 1; i++) 
		{
			star_array.push("*")
		}
		var star_string = star_array.toString()
		for (i=1; i < parseInt(episode.rating) * 2; i++) 
		{
			star_string = star_string.replace(',','');
		}
	    console.log("Rating:" + episode.rating + " " + star_string); //+ stars(episode));		
	});
}

module.exports = fileActions