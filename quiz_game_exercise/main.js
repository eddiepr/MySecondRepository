var read = require('read');
var Question = require('./question.js');
var Quiz = require('./quiz.js');

question1 = new Question ({question: "Who is the best programmer in the class?", answer: "someone"});
question2 = new Question ({question: "What is the best state in the country?", answer: "california"});
question3 = new Question ({question: "What city am I in?", answer: "Miami"});



var questions_array = 	[question1, question2, question3];
						


var quiz = new Quiz(questions_array);

quiz.begin_questions();

