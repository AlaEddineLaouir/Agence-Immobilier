$('#clients').click(function(){
    $('.section').hide().removeAttr('id','acceuil');
    $('.client').show().attr('id','acceuil');
});

$('#biens').click(function(){
    $('.section').hide().removeAttr('id','acceuil');
    $('.bien').show().attr('id','acceuil');
});

$('#RDVs').click(function(){
    $('.section').hide().removeAttr('id','acceuil');
    $('.RDV').show().attr('id','acceuil');
});

$('#profile').click(function(){
    $('.profile').show();
});