document.addEventListener('turbo:load', function() {

  const letters = document.querySelectorAll('.letter');
  letters.forEach((letter, index) => {
    setTimeout(() => {
      letter.style.opacity = 1;
      letter.style.transform = 'translateY(0) rotate(0deg)';
    }, index * 100); 
  });

  setTimeout(() => {
    const phrases = document.querySelectorAll(".appear");
    phrases.forEach((phrase) => {
      const width = phrase.scrollWidth;
      phrase.style.width = `${width}px`;
    });
  }, 100);

});


