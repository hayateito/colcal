      $("document").ready(function(){
        $('.single-item').slick({
          dots: true,
          autoplay: true,
          autoplaySpeed: 4000,
          infinite: true,
          responsive:[{
            breakpoint: 768,
            settings:{
              arrows: false
            }
          }]
        });
      });

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
                     if ($('.js-menu').css('display') == 'none') {
                    $('.js-menu').slideDown('slow');
                    } else {
                     $('.js-menu').slideUp('slow');
                     }
                    });
                });