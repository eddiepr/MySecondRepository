function sleep (time, func) {
		setTimeout(func, time * 1000)
	};

 	var time = 2;
 	var func = function (){
		console.log("It's been" + time + "seconds.");
	};
	sleep(time, func);