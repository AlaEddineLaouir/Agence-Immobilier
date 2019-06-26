$('.surface').slider({
    range: true,
    min: 0,
    max: 1000,
    values: [0, 1000],
    slide: function(event, surface){
        $((this.parentNode).childNodes[1]).width(((surface.values[0].toString().length+3)*7)+'px');
        $((this.parentNode).childNodes[5]).width(((surface.values[1].toString().length+3)*7)+'px');
        
        $((this.parentNode).childNodes[1]).val((surface.values[0]+' m\u00b2'));
        $((this.parentNode).childNodes[5]).val((surface.values[1]+' m\u00b2'));
    }
});
$('input.min-surface').width(($('.surface').slider('values',0).toString().length+3)*7);
$('input.max-surface').width(($('.surface').slider('values',1).toString().length+3)*7);

$('input.min-surface').val(($('.surface').slider('values',0)+' m\u00b2'));
$('input.max-surface').val(($('.surface').slider('values',1)+' m\u00b2'));

$('.prix').slider({
    range: true,
    min: 0,
    max: 1000000,
    values: [0, 1000000],
    slide: function(event, prix){
        $((this.parentNode).childNodes[1]).width(((prix.values[0].toString().length+3)*8)+'px');
        $((this.parentNode).childNodes[5]).width(((prix.values[1].toString().length+3)*8)+'px');
        
        $((this.parentNode).childNodes[1]).val((prix.values[0]+' DA'));
        $((this.parentNode).childNodes[5]).val((prix.values[1]+' DA'));
    }
})
$('input.min-prix').width(($('.prix').slider('values',0).toString().length+3)*8);
$('input.max-prix').width(($('.prix').slider('values',1).toString().length+3)*8);

$('input.min-prix').val(($('.prix').slider('values',0)+' DA'));
$('input.max-prix').val(($('.prix').slider('values',1)+' DA'));