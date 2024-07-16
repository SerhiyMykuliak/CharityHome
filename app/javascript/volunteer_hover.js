
document.addEventListener("turbo:load", function() {
  const volunteers = document.querySelectorAll(".volunteer")

  volunteers.forEach(volunteer => {
    volunteer.addEventListener("mouseenter", function() {
      const contacts = volunteer.querySelector(".volunteer__contacts")
      contacts.classList.add("show");
    })
  });

  volunteers.forEach(volunteer => {
    volunteer.addEventListener("mouseleave", function() {
      const contacts = volunteer.querySelector(".volunteer__contacts")
      contacts.classList.remove("show");
    })
  });
});
