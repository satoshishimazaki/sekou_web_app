$(function(){
    $(".toggle").on("click", function() {
        $(this).toggleClass('open');
        $(this).next().slideToggle(1);
    });
});
