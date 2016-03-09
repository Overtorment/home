var countdown = 500;
setInterval(function(){
	if ( countdown <= 0 ) return;
	var a = $('.sc-button-follow') ;
	if (a.innerText == "Follow") {
		a.click();
		countdown--;
		console.log("Left: " + countdown);
	}  else {
		console.log("Removing... Left: " + countdown);
		a.remove();
	}
}, 5000)














var countdown = 200;

var doit = function(){
	if ( countdown <= 0 ) return;
	var a = $('.sc-button-follow') ;
	if (a.innerText == "Follow") {
		a.click();
		countdown--;
		console.log("Left: " + countdown);
		setTimeout(function(){doit()}, 6000)
	}  else {
		console.log("Removing... Left: " + countdown);
		a.remove();
		doit();
	}
}
