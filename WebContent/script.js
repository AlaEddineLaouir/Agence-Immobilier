$('.fa-remove').click(function (){
	$('.limiter').hide();
});

$('.fa-close').click(function (){
	$('.close').hide();
});

$('.register-link').click(function (){
	$('.limiter').hide();
	$('.register-form').show();
});

$('.login-link').click(function (){
	$('.limiter').hide();
	$('.login-form').show();
});

$('input[type=date]').focusout(function(){
	if($(this).val()==''){
		$(this).removeClass('notempty');
	}
	else{
		$(this).addClass('notempty');
	}
});