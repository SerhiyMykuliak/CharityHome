document.addEventListener('turbo:load', () => {
  const swiper = new Swiper('.swiper-container', {
    
    direction: 'horizontal',
    loop: true,

    navigation: {
      nextEl: '.swiper-button-next', 
      prevEl: '.swiper-button-prev',
    },

    autoplay: {
      delay: 5000,
      disableOnInteraction: false, 
    },
 
    effect: 'slide',
    speed: 800,
    slidesPerView: 4,
   
    spaceBetween: 40,
    allowTouchMove: true,

  });
});

document.addEventListener('turbo:load', () => {
  const swiper = new Swiper('.swiper-testimonials-container', {
    
    direction: 'horizontal',
    loop: true,

    autoplay: {
      delay: 5000,
      disableOnInteraction: false, 
    },

    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
 
    effect: 'slide',
    speed: 800,
    slidesPerView: 3,
   
    spaceBetween: 50,
    allowTouchMove: true,

  });
});

