// slide full size
$(window).on('load', function () {
    var $mainSlideH = document.body.clientHeight;
    $('.main-slide .swiper-slide').css('height', $mainSlideH);
});
$(window).on('resize', function () {
    var $mainSlideH = document.body.clientHeight;
    $('.main-slide .swiper-slide').css('height', $mainSlideH);
});

$(document).ready(function() {
  // Top Img Slide
  setTimeout(function() {
    mainSlide = new Swiper('.main-slide .slide-bx', {
        speed: 2000,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        effect: 'fade',
        pagination: {
            el: '.swiper-pagination',
            type: 'fraction',
        },
        navigation: {
            nextEl: '.main-slide .next',
            prevEl: '.main-slide .prev',
        },
    });
  },0)
  $('.autoplay-start').on('click', function () {
      mainSlide.autoplay.start();
      $(this).css('display', 'none');
      $('.autoplay-stop').css('display', 'block');
  });
  $('.autoplay-stop').on('click', function () {
      mainSlide.autoplay.stop();
      $(this).css('display', 'none');
      $('.autoplay-start').css('display', 'block');
  });

  // Notice Slide
  mainNotice = new Swiper('.notice-slide', {
      slidesPerView: 2,
      spaceBetween: 40,
      slidesPerGroup : 2,
      navigation: {
          nextEl: '.main__notice .next',
          prevEl: '.main__notice .prev',
      },
      breakpoints: {
          1236: {
              slidesPerView: 1,
              spaceBetween: 0,
              slidesPerGroup : 1,
          },
      }
  });

  // PRESS Slide
  mainPress = new Swiper('.press-slide', {
      slidesPerView: 3,
      spaceBetween: 24,
      //loop: true,
      navigation: {
          nextEl: '.main__press .next',
          prevEl: '.main__press .prev',
      },
      breakpoints: {
          1236: {
              slidesPerView: 1,
              spaceBetween: 20,
          },
      }
  });

  $('#fullpage').fullpage({
      verticalCentered: false,
      scrollingSpeed:700,
      slidesNavigation: false,
      loopHorizontal: true,
      anchors: ['main1', 'main2', 'main3', 'main4','main5','main6'],
  });
  
})