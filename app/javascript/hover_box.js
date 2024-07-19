
document.addEventListener("turbo:load", function() {
  const hoverBoxes = document.querySelectorAll(".hover-box")

  hoverBoxes.forEach(target => {
    target.addEventListener("mouseenter", function() {
      const box = target.querySelector(".apear-box")
      box.classList.add("show");
    })
  });

  hoverBoxes.forEach(target => {
    target.addEventListener("mouseleave", function() {
      const box = target.querySelector(".apear-box")
      box.classList.remove("show");
    })
  });
});
