// console.log("hello world");

// function eat(food) {
// 	if (food === "Pizza") {
// 		console.log("Yay Pizza");
// 	}
// 	else if ("Cookies") {
// 		console.log("Cookies are good too");
// 	}
// 	else {
// 		console.log("Ok, enjoy eating" + food);
// 	}
// }
	
// eat("dfjdfdg");			


// for(var i=0; i < 42; i++) {
// 	console.log(i);
// }


// var foods = ['pizza', 'cookies', 'bread'];

// var capitalFoods = foods.map(function(food){
// 	return food.toUpperCase() + ' Is Good';
// })


// console.log(capitalFoods);

// var students = ["andrew","eddie","grace","luis","guillermo","franco"];

// var studentsLessFiveChars = students.filter(function(student) {
// 	return student.length <= 5;
// });

// console.log(students);
// console.log(studentsLessFiveChars);








// var obj = {
// 	food: 'pizza',
// 	Amount: 9999
// };

// console.log(obj.food);


// var obj = {};
// obj.action = function(param,param1,param2)


// var students = [
//     { name:"andrew",id:1 },
//     { name:"eddie", id:2 },
//     { name:"grace", id:3 },
//     { name:"luis", id:4 },
//     { name:"guillermo", id:5},
//     { name:"franco", id:6}
// ];

// var studentsLessFiveChars = students.filter(function(student){
//     return student.name.length <= 5;
// });

// function getStudentById(passed_id){
//     var returned_array = students.filter(function(student){
//         return student.id === passed_id;
//     });

//     return returned_array[0];
// }   


// console.log(getStudentById(4));



// var numbers = '80:70:90:100';
// function averageColon(numbers) {
// 	var array = numbers.split(':');
// }
// averageColon(numbers);
// console.log(array);


var words = [
	"dead",
	"bygone",
	"landing",
	"cheaply",
	"assumed",
	"incorrectly",
	"attention",
	"agent"
]



function decode(list) {
	var index = 0,
		secretMessage = '';

	for (var i=0; i<words.length; i++) 
	{
		secretMessage += words[i].charAt(index);
		index++;
		if (index % 5 === 0)
		{
			index = 0;
		}
	}
	return secretMessage;
};
console.log(decode(words));

//iterate through words
//grab the nth character based on index % 6 = 0 then index goes back to the beginning
//I need to collect these characters
//return the message


















