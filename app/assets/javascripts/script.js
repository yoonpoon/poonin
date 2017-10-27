  var loadImageOnScrollIntoView = function(img) {
  var imgPos = img.getBoundingClientRect(),
    src = img.getAttribute('data-src');
  window.addEventListener('scroll', function loadImgWhenVisible() {
    return window.scrollY >= (imgPos - window.innerHeight) ? (img.src = src, window.removeEventListener('scroll', loadImgWhenVisible)) : false;
  });
};

Array.apply(null, document.querySelectorAll('img')).forEach(function(e) {
  loadImageOnScrollIntoView(e);
});

$('a[href*=\\#]').on('click', function(event){
  event.preventDefault();
  $('html,body').animate({scrollTop:$(this.hash).offset().top - 35}, 500);
});


$(window).scroll(function () {
    console.log($(window).scrollTop());
    var topDivHeight = $(".object-fit-cover").height();
    var viewPortSize = $(window).height();

    var triggerAt = 150;
    var triggerHeight = (topDivHeight - viewPortSize) + triggerAt;

    if ($(window).scrollTop() >= triggerHeight) {
        $('.fadethisdiv').css('visibility', 'visible').hide().fadeIn();
        $(this).off('scroll');
    }
});
