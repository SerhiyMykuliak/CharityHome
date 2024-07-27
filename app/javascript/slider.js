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

    breakpoints: {
      0: {
        slidesPerView: 1,
        spaceBetween: 20,
      },

      768: {
        slidesPerView: 2,
        spaceBetween: 30,
      },
      
      1024: {
        slidesPerView: 3,
        spaceBetween: 40,
      },

      1200: {
        slidesPerView: 4,
      },
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
    
    breakpoints: {
      0: {
        slidesPerView: 1,
      },

      1024: {
        slidesPerView: 2,
      },

      1200: {
        slidesPerView: 3,
      },
    },
 
    effect: 'slide',
    speed: 800,
    slidesPerView: 3,
   
    spaceBetween: 50,
    allowTouchMove: true,

  });
});

document.addEventListener('turbo:load', () => {
  const swiper = new Swiper('.swiper-features-posts-container', {
    
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
    slidesPerView: 1,
   
    spaceBetween: 40,
    allowTouchMove: true,

  });
});
