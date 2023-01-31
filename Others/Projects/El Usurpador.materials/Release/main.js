var lastClickLink="";
function saveLastLink(){
	$('.turn>a').click(function(ev){
		lastClickLink=ev.currentTarget.innerText;
		$('.mirilla')[0].innerText=lastClickLink;
	});
}
//crea las direcciones faltantes
function createDirections() {
	let otherDirections = function(flecha='', direccion=''){
		let controller = document.getElementsByClassName('directional-buttons')[0];
		controller.innerHTML = controller.innerHTML + '<div class="'+flecha+'"><span class="">'+direccion+'</span></div>';
	}
	if(!$('.left')[0]){otherDirections('left','O');}
	if(!$('.right')[0]){otherDirections('right','E');}
	if(!$('.bottom')[0]){otherDirections('bottom', 'S');}
	if(!$('.top')[0]){otherDirections('top', 'N');}
	/*jQuery("html, body").animate({ scrollTop: jQuery(window).height()}, 500);*/
}

function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

function runMain(){
	$('body').append('<div class="outer-scratch"><div class="inner-scratch"><div class="background"></div></div></div>');
	//sleep(1000);
}
