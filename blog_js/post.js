var Post = function(postings) {
	
}

Post.prototype.display = function(postings){
	// for (var i=0; i < postings.length; i++) 
	// {
		console.log("Title:  " + "\n\n" + postings.title + "\n\n");
		console.log("Description:  " + "\n" + postings.description + "\n\n");
		console.log("Date:  " + postings.date);
		console.log("-----------------------\n\n");
	// }
	// console.log(poste.title);
	// console.log(poste.description);
	// console.log(poste.date);
}

module.exports = Post;