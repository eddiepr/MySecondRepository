var Post = require('./post');

function fileActions(err, file){ 
    if (err) {
        console.log(err);
    }
    var postings = JSON.parse(file);
    var post = new Post(postings);

    post.display(postings[0]);
}

module.exports = fileActions