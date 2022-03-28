var FuncObj = FuncObj || {};
;(function(FuncObj, $){
  'use strict';
  // common-variable
  var $window = $(window),
    $document = $(document),
    $html = $('html').addClass('onload-js disable-outline'),
    $body = $document.find('body').on({
      'keydown': function(e){
        if( e.keyCode === 9 ) $html.removeClass('disable-outline');
      },
      'keyup': function(e){
        if( e.keyCode === 13 ) $html.removeClass('disable-outline');
      },
      'click': function(){
        $html.addClass('disable-outline');
      }
    }),
    $wrap = $document.find('.wrap'),
    $header = $wrap.find('.header'),
    $container = $wrap.find('.container'),
    $footer = $wrap.find('.footer'),
    dimmedLayer = '<div class="dimmed-layer"></div>',
    aniSpeed = 100,
    activeClass = 'active';

  // responsive-resolution
  FuncObj.responsiveResolution = function() {
    var turningPoint = 1236;
    var pcViewClass = 'pc-view';
    var mobileViewClass = 'mobile-view';
    var mediaWidth = window.innerWidth;
    ( mediaWidth > turningPoint )
    ? $html.removeClass(mobileViewClass).addClass(pcViewClass)
    : $html.removeClass(pcViewClass).addClass(mobileViewClass);
  };
  FuncObj.responsiveResolution();

  // gnb
  FuncObj.gnb = function(){
    var $mobileGnbOpen = $header.find('.mobile-gnb-open');
    var $mobileGnbClose = $header.find('.mobile-gnb-close');
    var $language = $header.find('.language');
    var $gnb = $header.find('.gnb');
    var $gnbDepth01 = $gnb.find('.gnb__depth01');
    var $gnbDepth02 = $gnb.find('.gnb__depth02');
    var $gnbDepth03 = $gnb.find('.gnb__depth03');
    var $gnbDepth01Li = $gnbDepth01.find('> li');
    var $gnbDepth02Li = $gnbDepth02.find('> li');
    var $gnbDepth03Li = $gnbDepth03.find('> li');
    var $gnbDepth01A = $gnbDepth01Li.find('> a');
    var $gnbDepth02A = $gnbDepth02Li.find('> a');
    var $gnbDepth03A = $gnbDepth03Li.find('> a');
    var $gnbDepth03Prev = $gnbDepth03.prev('a');
    $gnb.find('.active').removeClass(activeClass);
    $gnbDepth03.hide();
    $gnbDepth03Prev.addClass('gnb__depth03--prev');
    // pc-view
    if( $html.hasClass('pc-view') ){
      var openGnbFunc = function(){
        var gnbHeight = $gnb.height();
        var $dimmedLayer = $wrap.find('.dimmed-layer');
        if( !$dimmedLayer.length ){
          $wrap.append(dimmedLayer);
          $header.addClass('header--gnb-open').stop().animate({
            'height':gnbHeight
          }, aniSpeed);
          $gnbDepth02Li.each(function(){
            var idx = $(this).index();
            $(this).delay( 50*idx ).animate({
              'opacity':'1',
              'top':'0'
            });
          });
        }
      };
      var closeGnbFunc = function(){
        $gnb.find('.active').removeClass(activeClass);
        $header.stop().animate({
          'height':'80px'
        }, aniSpeed, function(){
          $(this).removeClass('header--gnb-open');
          $wrap.find('.dimmed-layer').remove();
          $gnbDepth02Li.css({
            'opacity':'0',
            'top':'50px'
          });
        });
      };
      $header.css('height','80px');
      $language.show();
      $gnb.show();
      $gnbDepth02.show();
      $gnbDepth02Li.css({'opacity':'0', 'top':'50px'});
      $mobileGnbOpen.hide();
      $mobileGnbClose.hide();
      $gnbDepth01A.off('click');
      $gnbDepth01A.off('focusin mouseenter').on('focusin mouseenter', function(){
        var $this = $(this);
        var thisActive = $this.find('.active');
        openGnbFunc();
        if( !thisActive.length ){
          $this.parents('.gnb__depth01').find('> li > a').removeClass(activeClass);
          $this.addClass(activeClass);
        }
        $header.off('mouseleave').on('mouseleave', function(){
          closeGnbFunc();
        });
        $('.language a, .breadcrumb__main-btn').off('focus').on('focus', function(){
          closeGnbFunc();
        });
      });
      $gnbDepth02A.off('focusin mouseenter').on('focusin mouseenter', function(){
        var $this = $(this);
        var thisActive = $this.parents('.gnb__depth02').prev('a').find('.active');
        openGnbFunc();
        if( !thisActive.length ){
          $this.parents('.gnb__depth01').find('> li > a').removeClass(activeClass);
          $this.parents('.gnb__depth02').prev('a').addClass(activeClass);
        }     
      });
    // mobile-view
    } else {
      $header.removeClass('header--gnb-open');
      $header.css('height','54px');
      $language.hide();
      $mobileGnbOpen.show();
      $mobileGnbClose.hide();
      $gnb.hide();
      $gnbDepth02.hide();
      $gnbDepth02Li.css({'opacity':'1', 'top':'0'});
      $header.off('mouseleave');
      $gnbDepth01A.off('focusin mouseenter');
      $gnbDepth02A.off('focusin mouseenter');
      $('.language a, .breadcrumb__main-btn').off('focus');
      $mobileGnbOpen.off('click').on('click', function(){
        $header.addClass('header--gnb-open');
        $header.css('height', '100%');
        $language.show();
        $gnb.show();
        $mobileGnbClose.show();
        $(this).hide();
      });
      $mobileGnbClose.off('click').on('click', function(){
        $header.removeClass('header--gnb-open');
        $header.css('height', '54px');
        $language.hide();
        $gnb.hide();
        $mobileGnbOpen.show();
        $(this).hide();
      });
      $gnbDepth01A.off('click').on('click', function(e){
        var $this = $(this);
        e.preventDefault();
        if( $this.siblings('.gnb__depth02').is(':hidden') ) {
          $gnbDepth01A.removeClass(activeClass);
          $gnbDepth02.stop().slideUp(aniSpeed);
          $this.addClass(activeClass).siblings('.gnb__depth02').stop().slideDown(aniSpeed);
        } else {
          $this.removeClass(activeClass).siblings('.gnb__depth02').stop().slideUp(aniSpeed);
        }
      });
      $gnbDepth03Prev.off('click').on('click', function(e){
        var $this = $(this);
        e.preventDefault();
        if( $this.hasClass(activeClass) ){
          $this.removeClass(activeClass);
          $this.next('.gnb__depth03').stop().slideUp(aniSpeed);
        } else {
          $this.addClass(activeClass);
          $this.next('.gnb__depth03').stop().slideDown(aniSpeed);
        }
      });
    }
  };
  FuncObj.gnb();

  // content-top-bar__fixed
  FuncObj.contentTopBar = function(){
    var $contentTopBar = $container.find('.content-top-bar');
    if( !$contentTopBar.length ){
      return false;
    } else{
      var topBarLocationY = $contentTopBar.offset().top;
      $window.on('scroll', function(){
        var scrollTop = $window.scrollTop();
        ( topBarLocationY <= scrollTop )
        ? $contentTopBar.addClass('fixed')
        : $contentTopBar.removeClass('fixed');
      });
    }
  };
  FuncObj.contentTopBar();

  // content-top-bar__drop-down
  FuncObj.contentTopBarDropDown = function(){
    var $contentTopBar = $container.find('.content-top-bar');
    var $breadcrumb = $contentTopBar.find('.breadcrumb');
    var $breadcrumbDiv = $contentTopBar.find('> div');
    var $dropDownBtn = $breadcrumb.find('button');
    var $dropDownMenu = $breadcrumb.find('ul');
    var $dropDownMenu01 = $breadcrumb.find('.breadcrumb__drop-down-menu01');
    var $dropDownMenu02 = $breadcrumb.find('.breadcrumb__drop-down-menu02');
    var $dropDownMenu01Span = $dropDownMenu01.siblings('span');
    var $dropDownMenu02Span = $dropDownMenu02.siblings('span');
    $container.find('.contents').find('.dimmed-layer').remove();
    $dropDownBtn.removeClass(activeClass);
    $dropDownMenu.hide();
    $dropDownBtn.off('click');
    $breadcrumbDiv.off('mouseleave');
    // pc-view
    if( $html.hasClass('pc-view') ){
      $dropDownBtn.off('click').on('click', function(){
        var $this = $(this);
        if( $this.siblings('ul').is(':hidden') ){
          $this.siblings('ul').stop().slideDown(aniSpeed);
        } else{
          $this.siblings('ul').stop().slideUp(aniSpeed);
        }
      });
      $breadcrumbDiv.off('mouseleave').on('mouseleave', function(){
        $dropDownMenu.stop().slideUp(aniSpeed);
      });
    } else{
      $dropDownBtn.off('click').on('click', function(){
        var $this = $(this);
        if( $this.siblings($dropDownMenu02).is(':hidden') ){
          $container.find('.contents').append(dimmedLayer);
          $this.addClass(activeClass);
          $this.siblings('ul').stop().slideDown(aniSpeed);
        } else{
          $container.find('.contents').find('.dimmed-layer').remove();
          $this.removeClass(activeClass);
          $this.siblings('ul').stop().slideUp(aniSpeed);
        }
        $container.find('.contents').find('.dimmed-layer').click(function(){
          $container.find('.contents').find('.dimmed-layer').remove();
          $this.removeClass(activeClass);
          $dropDownMenu.stop().slideUp(aniSpeed);
        });
      });
    }
  };
  FuncObj.contentTopBarDropDown();

  // content-top-bar__share-btn
  FuncObj.contentTopBarShareBtn = function(){
    var $contentTopBar = $container.find('.content-top-bar');
    var $shareBtn = $contentTopBar.find('.share-btn');
    $shareBtn.on('click', function(){
      $(this).toggleClass(activeClass);
    });
  };
  FuncObj.contentTopBarShareBtn();

  // breadcrumb
  FuncObj.breadcrumb = function(){
    var $breadcrumb = $container.find('.breadcrumb');
    var $dropDownMenu01 = $breadcrumb.find('.breadcrumb__drop-down-menu01');
    var $dropDownMenu02 = $breadcrumb.find('.breadcrumb__drop-down-menu02');
    var $gnb = $header.find('.gnb');
    var $gnbDepth01 = $gnb.find('.gnb__depth01');
    var $gnbDepth01A = $gnbDepth01.find('> li > a');
    var gnbDepth01A_arr = $gnbDepth01A.toArray();
    var mainMenuTxt = $breadcrumb.find('.breadcrumb__main-menu').text(); 
    for( var i = 0; i < gnbDepth01A_arr.length; i ++ ){
      var dropDownList01 = '<li>' + gnbDepth01A_arr[i].outerHTML + '</li>';
      $dropDownMenu01.append(dropDownList01);
    }
    $gnbDepth01A.each(function(){
      var $this = $(this);
      var gnbDepth01ATxt = $this.text();
      if( gnbDepth01ATxt === mainMenuTxt ){
        var $gnbDepth02A = $this.next('.gnb__depth02').find('> li > a'),
          gnbDepth02A_arr = $gnbDepth02A.toArray();
        for( var i = 0; i < gnbDepth02A_arr.length; i ++ ){
          var dropDownList02 = '<li>' + gnbDepth02A_arr[i].outerHTML + '</li>';
          $dropDownMenu02.append(dropDownList02);
        }
      }
    });
  };
  FuncObj.breadcrumb();

  // family-site
  FuncObj.familySite = function(){
    var $familySite = $footer.find('.family-site');
    var $familySiteBtn = $familySite.prev('button');
    $familySite.slideUp(0);
    $familySiteBtn.on('click', function(){
      $(this).toggleClass(activeClass);
      $familySite.slideToggle(aniSpeed);
    });
  };
  FuncObj.familySite();

  // drop-down-menu
  FuncObj.dropDownMenu = function(){
    var $dropDownMenu = $wrap.find('.drop-down-menu');
    var $dropDownMenuBtn = $dropDownMenu.find('button');
    var $dropDownMenuList = $dropDownMenuBtn.next('ul');
    if( !$dropDownMenu.length ){
      return false;
    }
    $dropDownMenuList.slideUp(0);
    $dropDownMenuBtn.on('click', function(){
      $dropDownMenuList.slideToggle(aniSpeed);
    });
  };
  FuncObj.dropDownMenu();

  // top-btn
  FuncObj.topBtn = function(){
    var topBtn = $wrap.find('.top-btn');
    var mainTopBtn = $wrap.find('.main__footer .top-btn');
    if( mainTopBtn.length ){
      return false;
    } else{
      topBtn.on('click', function(e){
        e.preventDefault();
        $html.animate({scrollTop:0}, aniSpeed);
      });
    }
  };
  FuncObj.topBtn();

  // layer-popup
  FuncObj.layerPopup = function(){
    $wrap.append('<div class="popup-content"></div>');
    var $layerPopup = $wrap.find('.layer-popup');
    var $popupContent = $('.popup-content');
    var $closeButton = $popupContent.find('.close-button');
    if( !$layerPopup.length ){
      return false;
    }
    $popupContent.css('display','none');
    $layerPopup.on('click', function(e){
      var $this = $(this);
      var $dimmedLayer = $wrap.find('.dimmed-layer');
      e.preventDefault();
      $popupContent.css('display','block');
      if( !$dimmedLayer.length ){
        $wrap.append(dimmedLayer);
        $wrap.find('.dimmed-layer').addClass('opacity80');
      }
      var urlData = $this.data('popupUrl');
      $.ajax({
        url: urlData,
        success: function(data) {
          $popupContent.html(data);
        }
      });
    });
    $document.on('click', '.close-button', function(){
      $(this).closest($popupContent).css('display','none');
      $wrap.find('.dimmed-layer').remove();
    });
  };
  FuncObj.layerPopup();

  // gallery-list-setting
  FuncObj.galleryListSetting = function(){
    var $gallery = $wrap.find('.gallery');
    var $galleryView = $gallery.find('.gallery-view');
    var $galleryList = $gallery.find('.gallery-list');
    var $galleryViewImg = $galleryView.find('img');
    var $galleryListUl = $galleryList.find('ul');
    var galleryViewImg_arr = $galleryViewImg.toArray();
    // pc-view
    if( $html.hasClass('pc-view') ){
      $galleryListUl.empty();
      if( $galleryViewImg.length % 6 == 0 ){
        for( var i = 0; i < galleryViewImg_arr.length; i ++ ){
          var galleryListUlLi = '<li><a href="/">' + galleryViewImg_arr[i].outerHTML + '</a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
      } else{
        for( var i = 0; i < galleryViewImg_arr.length; i ++ ){
          var galleryListUlLi = '<li><a href="/">' + galleryViewImg_arr[i].outerHTML + '</a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
        for( var i = 0; i < 6 - $galleryViewImg.length % 6; i ++ ){
          var galleryListUlLi = '<li><a href="/"></a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
      }
    // mobile-view
    } else{
      $galleryListUl.empty();
      if( $galleryViewImg.length % 3 == 0 ){
        for( var i = 0; i < galleryViewImg_arr.length; i ++ ){
          var galleryListUlLi = '<li><a href="/">' + galleryViewImg_arr[i].outerHTML + '</a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
      } else{
        for( var i = 0; i < galleryViewImg_arr.length; i ++ ){
          var galleryListUlLi = '<li><a href="/">' + galleryViewImg_arr[i].outerHTML + '</a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
        for( var i = 0; i < 3 - $galleryViewImg.length % 3; i ++ ){
          var galleryListUlLi = '<li><a href="/"></a></li>';
          $galleryListUl.append(galleryListUlLi);
        }
      }
    }
  };
  FuncObj.galleryListSetting();

  // gallery
  FuncObj.gallery = function(){
    var $gallery = $wrap.find('.gallery');
    var $galleryView = $gallery.find('.gallery-view');
    var $galleryViewImg = $galleryView.find('img');
    var $galleryViewPrevBtn = $galleryView.find('.prev-button');
    var $galleryViewNextBtn = $galleryView.find('.next-button');
    var $galleryList = $gallery.find('.gallery-list');
    var $galleryList__mask = $gallery.find('.gallery-list__mask');
    var $galleryListUl = $galleryList.find('ul');
    var $galleryListUlLi = $galleryList.find('li');
    var $galleryListUlLiLi = $galleryList.find('li + li');
    var $galleryListUlLiLastChild = $galleryListUlLi.filter(':last-child');
    var $galleryListUlLiA = $galleryList.find('a');
    var $galleryListPrevBtn = $galleryList.find('.prev-button');
    var $galleryListNextBtn = $galleryList.find('.next-button');
    
    var $galleryView__desc = $galleryView.find('.gallery-view__desc');
    var $galleryView__descP = $galleryView__desc.find('p');
    $galleryView__descP.css('display', 'none');
    $galleryView__descP.filter(':first-child').css('display', 'block');
    var galleryViewPrevBtnFunc = function(){
      var $activeImg =  $galleryView.find('.active');
      if( $activeImg.prev('img').length ){
        $activeImg.removeClass(activeClass);
        $activeImg.prev('img').addClass(activeClass);
        $galleryListUl.find('.active').removeClass(activeClass)
        .parents('li').prev('li').find('a').addClass(activeClass);
        viewCount -= 1;
      }
      var $visibelGalleryView__descP = $galleryView__descP.filter(':visible');
      if( $visibelGalleryView__descP.prev('p').length ){
        $visibelGalleryView__descP.css('display', 'none');
        $visibelGalleryView__descP.prev('p').css('display', 'block');
      }
    };
    var galleryViewNextBtnFunc = function(){
      var $activeImg = $galleryView.find('.active');
      if( $activeImg.next('img').length ){
        $activeImg.removeClass(activeClass)
        .next('img').addClass(activeClass);
        $galleryListUl.find('.active').removeClass(activeClass)
        .parents('li').next('li').find('a').addClass(activeClass);
        viewCount += 1;
      }
      var $visibelGalleryView__descP = $galleryView__descP.filter(':visible');
      if( $visibelGalleryView__descP.next('p').length ){
        $visibelGalleryView__descP.css('display', 'none');
        $visibelGalleryView__descP.next('p').css('display', 'block');
      }
    };
    var galleryListUlLiAFunc = function(){
      $galleryListUlLiA.off('click').on('click', function(e){
        var $this = $(this);
        var thisAttr = $this.find('img').attr('src');
        e.preventDefault();
        if( !$this.find('img').length ){
          return false;
        } else{
          $galleryListUlLiA.removeClass(activeClass);
          $this.addClass(activeClass);
          $galleryViewImg.each(function(idx, item){
            var $this = $(this);
            $this.removeClass(activeClass);
            if( thisAttr === item.getAttribute('src') ){
              $this.addClass(activeClass);
            }
          });
          viewCount = $this.parents('li').index();
          // gallery-view__desc
          if( !$galleryView__desc.length ){
            return false;
          } else{
            if( $galleryView__descP.length > 1 ){
              $galleryView__descP.css('display', 'none');
              $galleryView__descP.each(function(idx, item){
                if( idx == $this.parent().index() ){
                  $(this).css('display', 'block');
                }
              });
            }
          }
        }
      });
    };

    var galleryListUlWidth = 0;
    $galleryListUlLi.each(function(){
      galleryListUlWidth += $(this).outerWidth(true);
      return galleryListUlWidth;
    });
    $galleryListUl.css('width', galleryListUlWidth);

    $galleryViewImg.removeClass(activeClass);
    $galleryViewImg.filter(':first-child').addClass(activeClass);
    $galleryList.find('li a').removeClass(activeClass);
    $galleryList.find('li:first-child a').addClass(activeClass);
    $galleryListUl.css('marginLeft', 0);

    // pc-view
    if( $html.hasClass('pc-view') ){
      $galleryListUlLi.css('width', 180);
      $galleryListUlLiLi.css('marginLeft', 24);
      var liMarginLeft = parseInt( $galleryListUlLiLi.css('marginLeft') );
      var viewCount = 0;
      var listCount = 0;
      $galleryViewPrevBtn.off('click').on('click', function(){
        galleryViewPrevBtnFunc();
        if( viewCount % 6 == 5 ){
          $galleryListPrevBtn.trigger('click');
        }
      });
      $galleryViewNextBtn.off('click').on('click', function(){
        galleryViewNextBtnFunc();
        if( viewCount % 6 == 0 ){
          $galleryListNextBtn.trigger('click');
        }
      });
      $galleryListPrevBtn.off('click').on('click', function(){
        var currentML = parseInt( $galleryListUl.css('marginLeft') );
        var moveSpace = currentML + $galleryList__mask.width() + liMarginLeft;
        if( listCount > 0 ){
          $galleryListUl.stop().animate({
            'marginLeft' : moveSpace
          }, aniSpeed);
          listCount -= 1;
        }
      });
      $galleryListNextBtn.off('click').on('click', function(){
        var currentML = parseInt( $galleryListUl.css('marginLeft') );
        var moveSpace = $galleryList__mask.width() + liMarginLeft + Math.abs(currentML);
        var intFrequency = $galleryListUlLi.length % 6;
        var floatFrequency = $galleryListUlLi.length / 6;
        var floatFrequencyTypeConversion = Math.floor($galleryListUlLi.length / 6);
        if( intFrequency == 0 ){
          if( listCount < floatFrequency - 1 ){
            $galleryListUl.stop().animate({
              'marginLeft' : -moveSpace
            }, aniSpeed);
            listCount += 1;
          }
        } else{
          if( listCount < floatFrequencyTypeConversion ){
            $galleryListUl.stop().animate({
              'marginLeft' : -moveSpace
            }, aniSpeed);
            listCount += 1;
          }
        }
      });
      galleryListUlLiAFunc();
    // mobile-view
    } else{
      var liWidth = parseFloat( ($galleryList__mask.width()/100) * 31 ) ;
      var liMarginLeft = parseFloat( ($galleryList__mask.width()/100) * 3.5 );
      $galleryListUlLi.css('width', liWidth);
      $galleryListUlLiLi.css('marginLeft', liMarginLeft);
      var viewCount = 0;
      var listCount = 0;
      $galleryViewPrevBtn.off('click').on('click', function(){
        galleryViewPrevBtnFunc();
        if( viewCount % 3 == 2 ){
          $galleryListPrevBtn.trigger('click');
        }
      });
      $galleryViewNextBtn.off('click').on('click', function(){
        galleryViewNextBtnFunc();
        if( viewCount % 3 == 0 ){
          $galleryListNextBtn.trigger('click');
        }
      });
      $galleryListPrevBtn.off('click').on('click', function(){
        var currentML = parseFloat( $galleryListUl.css('marginLeft') );
        var moveSpace = $galleryList__mask.width() + liMarginLeft + currentML;
        if( listCount > 0 ){
          $galleryListUl.stop().animate({
            'marginLeft' : moveSpace
          }, aniSpeed);
          listCount -= 1;
        }
      });
      $galleryListNextBtn.off('click').on('click', function(){
        var currentML = parseFloat( $galleryListUl.css('marginLeft') );
        var moveSpace = $galleryList__mask.width() + liMarginLeft + Math.abs(currentML);
        var intFrequency = $galleryListUlLi.length % 3;
        var floatFrequency = $galleryListUlLi.length / 3;
        var floatFrequencyTypeConversion = Math.floor($galleryListUlLi.length / 3);
        if( intFrequency == 0 ){
          if( listCount < floatFrequency - 1 ){
            $galleryListUl.stop().animate({
              'marginLeft' : -moveSpace
            }, aniSpeed);
            listCount += 1;
          }
        } else{
          if( listCount < floatFrequencyTypeConversion ){
            $galleryListUl.stop().animate({
              'marginLeft' : -moveSpace
            }, aniSpeed);
            listCount += 1;
          }
        }
      });
      galleryListUlLiAFunc();
    }
  };
  FuncObj.gallery();

  // gallery-btn-anymore
  FuncObj.galleryBtnAnymore = function(){
    var $gallery = $wrap.find('.gallery');
    var $galleryView = $gallery.find('.gallery-view');
    var $galleryViewPrevBtn = $galleryView.find('.prev-button');
    var $galleryViewNextBtn = $galleryView.find('.next-button');
    var $galleryList = $gallery.find('.gallery-list');
    var $galleryListPrevBtn = $galleryList.find('.prev-button');
    var $galleryListNextBtn = $galleryList.find('.next-button');
    var $galleryListUlLiA = $galleryList.find('a');
    var anymoreClass = 'anymore';
    ( !$galleryView.find('.active').next('img').length )
    ? $galleryViewPrevBtn.addClass(anymoreClass)
    & $galleryViewNextBtn.addClass(anymoreClass)
    : $galleryViewPrevBtn.addClass(anymoreClass);
    $galleryViewNextBtn.on('click', function(){
      var $activeImg =  $galleryView.find('.active');
      if( $activeImg.prev('img').length ){
        $galleryViewPrevBtn.removeClass(anymoreClass);
      }
      if( !$activeImg.next('img').length ){
        $galleryViewNextBtn.addClass(anymoreClass);
      }
    });
    $galleryViewPrevBtn.on('click', function(){
      var $activeImg =  $galleryView.find('.active');
      ( $activeImg.prev('img').length )
      ? $galleryViewPrevBtn.removeClass(anymoreClass)
      : $galleryViewPrevBtn.addClass(anymoreClass);

      if( $activeImg.next('img').length ){
        $galleryViewNextBtn.removeClass(anymoreClass)
      }
    });
    $galleryListUlLiA.on('click', function(){
      var $activeImg =  $galleryView.find('.active');
      ( $activeImg.prev('img').length )
      ? $galleryViewPrevBtn.removeClass(anymoreClass)
      : $galleryViewPrevBtn.addClass(anymoreClass);

      ( $activeImg.next('img').length )
      ? $galleryViewNextBtn.removeClass(anymoreClass)
      : $galleryViewNextBtn.addClass(anymoreClass);
    });

    // pc-view
    if( $html.hasClass('pc-view') ){
      var listCount = 0;
      var $galleryListUlLi = $galleryList.find('li');
      var intFrequency = $galleryListUlLi.length % 6;
      var floatFrequency = $galleryListUlLi.length / 6;
      var floatFrequencyTypeConversion = Math.floor($galleryListUlLi.length / 6);
      ( $galleryListUlLi.length <= 6 )
      ? $galleryListPrevBtn.addClass(anymoreClass)
      & $galleryListNextBtn.addClass(anymoreClass)
      : $galleryListPrevBtn.addClass(anymoreClass);
      
      $galleryListPrevBtn.on('click', function(){
        if( $galleryListUlLi.length <= 6 ){
          return false;
        } else{
          if( listCount > 0 ){
            listCount -= 1;
            if( listCount == 0 ){
              $galleryListPrevBtn.addClass(anymoreClass);
              $galleryListNextBtn.removeClass(anymoreClass);
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
              $galleryListNextBtn.removeClass(anymoreClass);
            }
          } else{
            return false;
          }
        }
      });
      $galleryListNextBtn.on('click', function(){
        if( $galleryListUlLi.length <= 6 ){
          return false;
        } else{
          if( intFrequency != 0 ){
            if( listCount == floatFrequencyTypeConversion-1 ){
              $galleryListNextBtn.addClass(anymoreClass);
            }
            if( listCount < floatFrequencyTypeConversion ){
              listCount += 1;
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
            }
          } else{
            if( listCount < floatFrequencyTypeConversion-1 ){
              listCount += 1;
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
            }
            if( floatFrequencyTypeConversion - listCount == 1 ){
              $galleryListNextBtn.addClass(anymoreClass);
            } else{
              return false;
            }
          }
        }
      });
    // mobile-view
    } else{
      var listCount = 0;
      var $galleryListUlLi = $galleryList.find('li');
      var intFrequency = $galleryListUlLi.length % 3;
      var floatFrequency = $galleryListUlLi.length / 3;
      var floatFrequencyTypeConversion = Math.floor($galleryListUlLi.length / 3);
      ( $galleryListUlLi.length <= 3 )
      ? $galleryListPrevBtn.addClass(anymoreClass)
      & $galleryListNextBtn.addClass(anymoreClass)
      : $galleryListPrevBtn.addClass(anymoreClass);
      
      $galleryListPrevBtn.on('click', function(){
        if( $galleryListUlLi.length <= 3 ){
          return false;
        } else{
          if( listCount > 0 ){
            listCount -= 1;
            if( listCount == 0 ){
              $galleryListPrevBtn.addClass(anymoreClass);
              $galleryListNextBtn.removeClass(anymoreClass);
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
              $galleryListNextBtn.removeClass(anymoreClass);
            }
          } else{
            return false;
          }
        }
      });
      $galleryListNextBtn.on('click', function(){
        if( $galleryListUlLi.length <= 3 ){
          return false;
        } else{
          if( intFrequency != 0 ){
            if( listCount == floatFrequencyTypeConversion-1 ){
              $galleryListNextBtn.addClass(anymoreClass);
            }
            if( listCount < floatFrequencyTypeConversion ){
              listCount += 1;
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
            }
          } else{
            if( listCount < floatFrequencyTypeConversion-1 ){
              listCount += 1;
            }
            if( listCount > 0 ){
              $galleryListPrevBtn.removeClass(anymoreClass);
            }
            if( floatFrequencyTypeConversion - listCount == 1 ){
              $galleryListNextBtn.addClass(anymoreClass);
            } else{
              return false;
            }
          }
        }
      });
    }
  };
  FuncObj.galleryBtnAnymore();

  // tab
  FuncObj.tab = function(){
    var $tab = $container.find('.tab, .mobile-swiper--tab');
    var $tabA = $tab.find('a');
    var $tabContent = $container.find('.tab-content');
    var $tabContentDiv = $tabContent.find('> div');
    $tabContentDiv.css('display', 'none');
    $tabContentDiv.filter(':first-child').css('display', 'block');
    if( !$tabA.length ){
      return false;
    } else{
      $tabA.on('click', function(e){
        var $this = $(this);
        var aIdx = $this.index();
        e.preventDefault();
        $tabA.removeClass(activeClass);
        $this.addClass(activeClass);
        $tabContentDiv.css('display', 'none');
        $tabContentDiv.each(function(){
          var $this = $(this);
          var divIdx = $this.index();
          if( divIdx === aIdx ){
            $this.css('display', 'block');
          }
        });
      });
    }
  }
  FuncObj.tab();

  // mobile-bxslider
  FuncObj.mobileBxslider = function(){
    var $mobileBxslider = $('.img-list, .purpose ul, .overview ul');
    if( !$mobileBxslider.length ){
      return false;
    } else{
      if( $html.hasClass('mobile-view') ){
        $mobileBxslider.bxSlider({
          controls : false
        });
      }
      $window.on('resize', function(){
        var turningPoint = 1236;
        var mediaWidth = window.innerWidth;
        if( mediaWidth < turningPoint ) {
          $mobileBxslider.bxSlider({
            controls : false
          });
        } else{
          $mobileBxslider.destroySlider();
        }
      });
    }
  }
  FuncObj.mobileBxslider();

  // mobile-swiper
  FuncObj.mobileSwiper = function(){
    var $mobileSwiper = $('.mobile-swiper');
    if( !$mobileSwiper.length ){
      return false;
    } else{
      if( $html.hasClass('mobile-view') ){
        $mobileSwiper = new Swiper('.mobile-swiper', {
          slidesPerView: 4,
          freeMode: true
        });
      }
      $window.on('resize', function(){
        var turningPoint = 1236;
        var mediaWidth = window.innerWidth;
        var $mobileSwiper = $('.mobile-swiper');
        if( mediaWidth < turningPoint ) {
          $mobileSwiper = new Swiper('.mobile-swiper', {
            slidesPerView: 4
          });
        } else{
          var aLength = $mobileSwiper.find('a').length;
          $mobileSwiper = new Swiper('.mobile-swiper', {
            slidesPerView: aLength
          });
          // $mobileSwiper.destroy();
        }
      });
    }
  }
  FuncObj.mobileSwiper();

  // about-history:연혁
  FuncObj.aboutHistory = function(){
    var $historyWrap = $container.find('.history-wrap');
    var $historyWrapInner = $historyWrap.find('.inner');
    var $historyWrapInnerItem = $historyWrapInner.find('.item');
    var $historyWrapInnerItemInner = $historyWrapInnerItem.find('.item__inner');
    var $pointLine = $historyWrapInner.find('.point-line');

    $historyWrapInnerItemInner.append('<span></span>');
    if( !$historyWrap.length ){
      return false;
    } else{
      $window.on('load scroll resize', function(){   
        $historyWrapInnerItem.each(function(){
          var $this = $(this);
          var idx = $this.index();
          var $historyWrapInnerItemInner = $this.find('.item__inner');
          var $historyWrapInnerItemInnerSpan = $historyWrapInnerItemInner.find('> span');
          var historyWrapInnerItemInnerLocationY = $historyWrapInnerItemInner.offset().top;
          var scrollBottom = $window.scrollTop() + $window.height();
          var historyWrapInnerLocationY = $historyWrapInner.offset().top;
          var historyWrapInnerItemInnerSpanLocationY = $historyWrapInnerItemInnerSpan.offset().top;
          var heightValue = historyWrapInnerItemInnerSpanLocationY - historyWrapInnerLocationY + 'px';
          if( historyWrapInnerItemInnerLocationY <= scrollBottom ){
            $this.addClass('active');
            $pointLine.stop().animate({
              'height': heightValue
            }, 400);
          } else{
            $this.removeClass('active');
          }
          var $historyLastItem = $pointLine.prev('.item');
          var $historyLastItemInner = $historyLastItem.find('.item__inner');
          var historyLastItemLocationY = $historyLastItemInner.offset().top;
          if( historyLastItemLocationY <= scrollBottom ){
            $pointLine.stop().animate({
              'height': '100%'
            }, 400);
          }
        });
      });
    }
  }
  FuncObj.aboutHistory();

  // bg-scroll-move
  FuncObj.bgScrollMove = function(){
    var $win = $(window),
      $vs = $('.tourism-info-vs'),
      vs_t = $vs.offset().top,
      vs_h = $vs.outerHeight(),
      vs_h_half = (vs_h / 2),
      win_h = $win.outerHeight(),
      sct = 0;

    $(window).scroll(function(){
      sct = $(this).scrollTop();
      if (sct + win_h > vs_t + vs_h_half && sct + win_h < vs_t + win_h + vs_h_half) {
        var n = Math.abs((vs_t + vs_h_half) - (sct + win_h)),
            m = n / win_h * 100;

        $vs.css('background-position', '50% ' + m + '%');
      }
    });
  }

  // resize
  $window.on({
    'resize': function() {
      FuncObj.responsiveResolution();
      FuncObj.gnb();
      FuncObj.contentTopBarDropDown();
      FuncObj.galleryListSetting();
      FuncObj.gallery();
      FuncObj.galleryBtnAnymore();
    }
  });
})(FuncObj, jQuery);