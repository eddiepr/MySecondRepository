var read = require('read');


var Question = require('./question.js');


var Quiz = function (questions_array) {
	var question = new Question();
	question.ask_question(questions_array[0]);
}

module.exports = Quiz;