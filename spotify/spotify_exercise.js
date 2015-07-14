
function onSaveSuccessTrack (track) {
	console.log(track);
	
	$('.track-list').remove();
	track.tracks.items.forEach(function (item) {	
		$('.artist-list').prepend("<li class='track-list'>" + "<a target=”_blank” href='" + item.uri + "'>" + "</a>" + "</li>")
	})
}

function onSaveFailureTrack () {
	console.log("error!")
}

function onSaveSuccessAlbum (album) {
	console.log("Hello");
	$('.album-list').remove();
	album.albums.items.forEach(function (item) {
		console.log("Hello")	
		$('.artist-list').prepend("<li class='album-list'>" + item.name + "</li>")
	})
	$('.album-list').on('click', function () {
		console.log("clicked");
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
	console.log("error!");
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
	console.log("error!");
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