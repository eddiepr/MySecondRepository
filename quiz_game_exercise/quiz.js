var read = require('read');

var Question = require('./question.js');


var Quiz = function (questions_array) {
	this.questions_array = questions_array;


}

Quiz.prototype.begin_questions = function () {
	options = {
		    prompt: this.questions_array[0].question
		}
		var validate_answer = this.validate_answer;
		read(options, this.questions_array[0].validate_answer);
		console.log("test");

	module.exports = Quiz;
}