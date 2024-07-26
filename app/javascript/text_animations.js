document.addEventListener('turbo:load', function() {
  // Animation of falling letters
  const appearText = document.querySelector('.animated-title-1');
  
  if (appearText) {
    const letters = appearText.querySelectorAll('.letter');

    const totalWidth = Array.from(letters).reduce((width, letter) => width + letter.offsetWidth, 0);
    
    appearText.style.width = `${totalWidth}px`;
    appearText.style.backgroundColor = '#eb5310';
    
    letters.forEach((letter, index) => {
      setTimeout(() => {
        letter.style.opacity = 1;
        letter.style.transform = 'translateY(0) rotate(0deg)';
      }, index * 100);
    });
  }

  // Animation of the opening of the text
  const phrases = document.querySelectorAll(".animated-title-3");
  phrases.forEach((phrase) => {
    if (phrase) {
      const width = phrase.scrollWidth;
      phrase.style.width = `${width}px`;
      phrase.style.opacity = 1;
    }
  });

  // Double opening animation text
  const animatedTitle = document.querySelector('.animated-title-2');
  if (animatedTitle) {
    const text = animatedTitle.querySelector('.text');
    if (text) {
      const textWidth = text.scrollWidth;
      animatedTitle.style.width = `${textWidth}px`;
      text.style.width = `${textWidth}px`;
      text.style.opacity = 1;
    }
  }
});
