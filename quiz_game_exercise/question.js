// var read = require('read');

// var Question = function(question) {
// 	this.question = question;
	
// }

// Question.prototype.ask_question = function(question){
// 	question : question;
// 	options = {
// 	    prompt: question.question
// 	}
// 	var validate_answer = this.validate_answer;
// 	read(options, validate_answer);
// }

// Question.prototype.validate_answer = function (err, user_answer) {
// 	if (user_answer === this.question.answer) {
// 		console.log("correct answer");
// 	}
// 	else {
// 		console.log("wrong answer")
// 	}
// }
// module.exports = Question;




var read = require('read');

var Question = function(question_object) {
	this.question = question_object.question;
	this.answer = question_object.answer;	
}


Question.prototype.validate_answer = function (err, user_answer) 
{
	if (user_answer === this.answer) {
		console.log("correct answer");
	}
	else {
		console.log(this.answer);
		console.log("wrong answer");
	}
}
module.exports = Question;









