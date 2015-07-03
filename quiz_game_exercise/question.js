var read = require('read');

var Question = function() {
	
}

Question.prototype.ask_question = function(question){
	question : question;
	options = {
	    prompt: question.question
	}
	var validate_answer = this.validate_answer;
	read(options, validate_answer);
}

Question.prototype.validate_answer = function (err, user_answer) {
	if (user_answer === this.question.answer) {
		console.log("correct answer");
	}
	else {
		console.log("wrong answer")
	}
}
module.exports = Question;