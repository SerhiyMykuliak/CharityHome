
document.addEventListener("turbo:load", function() {
  const items = document.querySelectorAll(".accordion")

  items.forEach(accordion => {
    accordion.addEventListener("click", function () {
      
      items.forEach(item => {
        const dropContent = item.querySelector(".accordion__content")
        dropContent.style.height = "0"
      })
      
      const dropContent = accordion.querySelector(".accordion__content")
      dropContent.style.height = `${dropContent.scrollHeight}px`
    })
  })
});