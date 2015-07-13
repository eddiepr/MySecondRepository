
// function blastoff(seconds) {
// 	for (var i=seconds; i>-1; i--) {
// 			console.log(i)
// 	}
// 	console.log('Blast off!')
// }



// blastoff(5);



	// function blastOff (seconds) {
	// 	function countdown () {
	// 		if (seconds > 0 ) {
	// 			console.log(seconds);
	// 		}
	// 		seconds -= 1;
	// 		if (seconds >= 0) {
	// 			setTimeout(countdown, 1000);
	// 		}
	// 		else {
	// 			console.log('blastoff!')
	// 		}
	// 	}
	// 	countdown();
	// }
	// blastOff(2);



	function sleep (time, func) {
		setTimeout(func, time * 1000)
	};

 	var time = 2;
 	var func = function (){
		console.log("It's been" + time + "seconds.");
	};
	sleep(time, func);

	// function blastoff (seconds) {
	// 	while (seconds >=0) {
	// 		setTimeout(function () {
	// 			console.log(seconds);
	// 			seconds -= 1;
	// 		}, 1000);
	// 	}
	// 	console.log('Blast off!');
	// }

	// setTimeout(countdown,)

	// blastoff(5);