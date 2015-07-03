var read = require('read');

var Question = require('./question.js');


var Quiz = function (questions_array) {
	this.questions_array = questions_array;
	this.current_question_index = 0;
	this.current_question = this.questions_array[this.current_question_index]
	
}

Quiz.prototype.begin_questions = function () {
	options = {
	    prompt: this.current_question.question
	}
	// var validate_answer = this.current_question.validate_answer();
	read(options, this.validate_quiz_answer.bind(this));
	console.log("test");
}

Quiz.prototype.validate_quiz_answer = function(){
	if (this.current_question.validate_answer === true){
		console.log("Winner winner")
	}
}

module.exports = Quiz;