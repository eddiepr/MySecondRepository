(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){

function onSaveSuccessTrack () {

}

function onSaveFailureTrack () {
	console.log("error!")
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
},{}]},{},[1]);
