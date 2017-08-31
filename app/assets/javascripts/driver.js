
var prevButton = '<a href="#" class="slide__btn slide__btn--muted slide__prev">Previous</a>';
var nextButton = '<a href="#" class="slide__btn slide__next">Next</a>';
var exitButton = '<a href="#" class="slide__btn slide__exit">Close</a>';

// Show first slide if all invisible
if ( $(".slide:visible").length == 0){
  showSlide($('.slide:hidden:first'));
}

function closeSlides(){
  // hide all active slides
  $('.slide__active').removeClass('slide__active');
  // clear all buttons
  $('.slide__btn').remove();
}

function showSlide(slide){
  closeSlides();

  // set this slide to active
  slide.addClass('slide__active');

  // display buttons
  if( slide.is(':first-child') ){
  	slide.append(nextButton);
  }else if( slide.is(':last-child') ){
    slide.append(prevButton).append(exitButton);
  }else{
    slide.append(prevButton).append(nextButton);
  }
}

// Click Handler
$('.slides').on('click','.slide__next',function(){
  showSlide($(this).closest('.slide').next());
}).on('click','.slide__prev',function(){
  showSlide($(this).closest('.slide').prev());
}).on('click','.slide__exit',function(){
  closeSlides();
})
