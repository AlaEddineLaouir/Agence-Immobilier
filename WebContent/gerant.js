$('#agent').click(function(){
    $('.section').hide().removeAttr('id','acceuil');
    $('.agent').show().attr('id','acceuil');
});

$('#profile').click(function(){
    $('.profile').show();
});