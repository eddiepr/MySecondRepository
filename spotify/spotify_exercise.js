function onSaveSuccess (artist) {

	artist.artists.items.forEach(function (entry) {
		var length = entry.images.length - 1;
		// if ('images' in entry) {
		// 	if ('url' in 'images') {
		// 		$('.artist-list').append("<li>" + entry.name + "<img src=' " + entry.images[0].url + " '>" + "</img>" + "</li>");
		// 	}
		// }
		// else {
		// 	$('.artist-list').append("<li>" + entry.name + "</li>");
		// }

		if (entry.images[0] != undefined) {
			$('.artist-list').append("<li>" + entry.name + "<img src=' " + entry.images[0].url + " '>" + "</img>" + "</li>");
		}
		else {
			$('.artist-list').append("<li>" + entry.name + "</li>");
		}
	});

	
}

function onSaveFailure () {
	
}


function onSubmit (event) {
	event.preventDefault();
	console.log("hi guys");
	searchTerm = $('.name').val();
	$.ajax({
	    type: "GET",
	    url: "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm,
	    data: ' ',
	    success: onSaveSuccess,
	    error: onSaveFailure,
	    dataType: "json"
	  });
}


$('.search-submit').on('click', onSubmit);