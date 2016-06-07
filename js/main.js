// enter your javascript here
// this javascript will load on everypage
$(function() {
	$('.category-chooser a').on('click', function(e) {
		var category = $(this).attr('data-id');
		
		$('.category-chooser a').removeClass('at');
		$(this).addClass('at');
		
		if (category == "all") {
			$('.portfolio-item').removeClass('hidden');
		} else {
			$('.portfolio-item').addClass('hidden');
			$('.portfolio-item[data-category="'+category+'"]').removeClass('hidden');
		}
	});
});


(function() {
	var navigation, height, toggle;
	
	function navToggle(e) {
		height		= navigation.style.height;
		window.scrollTo(0,0);
		if (!height || height == '0px') {
			navigation.style.height = navigation.scrollHeight + 'px';
			navigation.className = navigation.className += ' open';
		} else {
			navigation.style.height = '0px';
			navigation.className = navigation.className.replace('open', '').trim();
		} 
	}
	
	function windowScroller() {
		if (window.scrollY > 300) toggle.className = 'down';
		else toggle.className = '';
	}
	
	if (window.addEventListener) {
		window.addEventListener('scroll', windowScroller);
		window.addEventListener('load', function() {
			navigation	= document.getElementsByClassName('navigation')[0];
			toggle		= document.getElementById('toggle-nav');
			toggle.addEventListener('click', navToggle);
		});
	}	
})();