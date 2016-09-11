$(document).ready(function(){

	//fancybox.js init
	$('.fancybox').fancybox({
		openEffect : 'none',
		closeEffect : 'none',
		prevEffect : 'none',
		nextEffect : 'none',

		arrows : false,
		helpers : {
			media : {},
			buttons : {}
		}
	});



	//wow.js init
	wow = new WOW(
	    {
		  animateClass: 'animated',
		  mobile: false,
		  offset: 100
		}
	);
	wow.init();

});


$('.basicslider').flexslider({
	animation: "slide",
	// animationLoop: true,
	pauseOnHover: true,
	controlNav: true,
	directionNav: false,
	smoothHeight: true,
	start: function(slider) {
		$('body').removeClass('loading');
	}
});