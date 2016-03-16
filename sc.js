// LOAD followers on page

var scrollto = 0;
var loadmore = function(){
    scrollto += 500;
    window.scrollTo(0, scrollto);
    setTimeout(function(){
		if ($$('.sc-button-follow').length < 4500) {			
			console.log('Loaded ', $$('.sc-button-follow').length);
			return loadmore();
		}
    }, 500);
}






// UNFOLLOW followed people

var countdown_unfollow = 150;
var dounfollow = function(){
	if ( countdown_unfollow <= 0 ) return;
	var a = $('.sc-button-follow') ;
	if (a && a.innerText == "Following") {
		var nickname = false;
		if (a.parentNode.parentNode.childNodes[2]) {
			nickname = a.parentNode.parentNode.childNodes[2].innerText;
			a.click();
			countdown_unfollow--;
			localStorage[nickname] = 'unfollowed';
			console.log('Unfollowing ', nickname);
		}
		a.remove();
		console.log("Left to unfollow: " + countdown_unfollow);
		setTimeout(function(){dounfollow()}, 1000)
	}  else if (a) {
		console.log("Removing... Left to unfollow: " + countdown_unfollow);
		a.remove();
		dounfollow();
	}
}




// FOLLOW people


var countdown = 100;

var dofollow = function(){
	if ( countdown <= 0 ) return;
	var a = $('.sc-button-follow') ;
	if (a.innerText == "Follow") {
		var nickname = false;
		nickname = a.parentNode.parentNode.childNodes[2].innerText;
		if (localStorage[nickname] && localStorage[nickname] == 'unfollowed'){
			// should skip, we followed him before
			a.remove();
			return dofollow();
		} else {
			countdown--;
			console.log('followin ', nickname);
			
			setTimeout(function(){ a.click(); }, 0);
			setTimeout(function(){ a.remove(); },1000);
		}

		console.log("Left: " + countdown);
		setTimeout(function(){dofollow()}, 6000)
	}  else {
		console.log("Removing... Left: " + countdown);
		a.remove();
		dofollow();
	}
}



