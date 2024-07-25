document.addEventListener('turbo:load', function() {

  // Animation of falling letters
  const appearText = document.querySelector('.animated-title-1');
  const letters = appearText.querySelectorAll('.letter');

  const width = Array.from(letters).reduce((totalWidth, letter) => {
    return totalWidth + letter.offsetWidth;
  }, 0);

  appearText.style.width = `${width}px`;
  appearText.style.backgroundColor = '#eb5310';
  
  letters.forEach((letter, index) => {
    setTimeout(() => {
      letter.style.opacity = 1;
      letter.style.transform = 'translateY(0) rotate(0deg)';
    }, index * 100);
  });


  // Animation of the opening of the text
  const phrases = document.querySelectorAll(".animated-title-3");
  phrases.forEach((phrase) => {
    const width = phrase.scrollWidth;
    phrase.style.width = `${width}px`;
    phrase.style.opacity = 1;
  });
  

  
  // Double opening animaton text 
  const animatedTitle = document.querySelector('.animated-title-2');
  const text = animatedTitle.querySelector('.text');

  const textWidth = text.scrollWidth; 
  animatedTitle.style.width = `${textWidth}px` ;
  text.style.width = `${textWidth}px`;
  text.style.opacity = 1;

});


