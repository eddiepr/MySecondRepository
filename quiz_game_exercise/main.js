var read = require('read');
var Question = require('./question.js');
var Quiz = require('./quiz.js');

question1 = Question.new("Who is the best programmer in the class?", answer: "someone")

var questions_array = 	[{question : "Who is the best programmer in the class?",
						answer : "someone" },
						{ question : "What is the best state in the country?",
							answer: "california"},
						{question : "What city am I in?",
						answer : "Miami"
						}]
						


var quiz = new Quiz(questions_array);

