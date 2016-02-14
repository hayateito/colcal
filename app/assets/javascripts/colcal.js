<script>
$(function(){
    $(".menu").click(function(){
        $(".menu1").toggleClass("menuclick1")
    });
    $(".menu").click(function(){
        $(".menu2").toggleClass("menuclick2")
    });
    $(".menu").click(function(){
        $(".menu3").toggleClass("menuclick3")
    }); 
});
 
$(function(){
            $('.menu').click(function(){
             if ($('ul').css('display') == 'none') {
            $('ul').slideDown('slow');
            } else {
             $('ul').slideUp('slow');
             }
            });
        });
 
</script>