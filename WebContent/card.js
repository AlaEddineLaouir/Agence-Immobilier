

var i = 1;
var temps = 3000;
var repeter = setInterval(next, temps);


function next() {
    i = (i%$('.img-bien').length)+1;
    $('.img-bien').hide();
    $('#img' + i).show();
} ;
    

$('.left').click(function() {
        i = (i+1)%$('.img-bien').length+1;
        $('.img-bien').hide();
        $('#img'+i).show();
        clearInterval(repeter);
        repeter = setInterval(next, temps);
    });

$('.right').click(function() {
        i = (i%$('.img-bien').length)+1;
        $('.img-bien').hide();
        $('#img'+i).show();
        clearInterval(repeter);
        repeter = setInterval(next, temps);
    });