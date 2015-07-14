
function onSaveSuccessTrack () {

}


function onSaveSuccessFailureTrack () {
	
}



function onSaveSuccessAlbum (album) {
	console.log(album);
	$('.album-list').remove();
	album.albums.items.forEach(function (item) {	
		$('.artist-list').prepend("<li class='album-list'>" + item.name + "</li>")
		$('.artist-list').addClass('listed');
	})

	$('.album-list').on('click', function () {
		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=track&query=" + $(this).text(),
			data: ' ',
			success: onSaveSuccessTrack,
			error: onSaveFailureTrack,
			dataType: "json"
		});
	})
}

function onSaveFailureAlbum () {

}

function onSaveSuccessArtist (artist) {
	console.log(artist);
	artist.artists.items.forEach(function (entry) {
		var length = entry.images.length - 1;
		if (entry.images[0] != undefined) {
			$('.artist-list').append("<li class='list-item'>" + entry.name + "<img src=' " + entry.images[0].url + " '>" + "</img>" + "</li>");
		}
		else {
			$('.artist-list').append("<li class='list-item'>" + entry.name + "</li>");
		}
	});

	$('.list-item').on('click', function () {
		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=album&query=" + $(this).text(),
			data: ' ',
			success: onSaveSuccessAlbum,
			error: onSaveFailureAlbum,
			dataType: "json"
		});
	})
}

function onSaveFailureArtist () {
	
}





function onSubmit (event) {
	event.preventDefault();
	console.log("hi guys");
	searchTerm = $('.name').val();
	$.ajax({
		type: "GET",
		url: "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm,
		data: ' ',
		success: onSaveSuccessArtist,
		error: onSaveFailureArtist,
		dataType: "json"
	});
}

$('.search-submit').on('click', onSubmit);