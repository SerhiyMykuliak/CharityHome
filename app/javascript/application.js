// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "stripe_implement"
import "hover_box"
import "text_animations"
import "slider"
import "accordion"
import "google_map"

import { Turbo } from "@hotwired/turbo-rails"

import "trix"
import "@rails/actiontext"



document.addEventListener("turbo:load", function() {
  const flashMessage = document.querySelector(".flash-message");

  if (flashMessage) {
    setTimeout( () => {
      flashMessage.classList.add("hidden");
    }, 3000) ;
  }
});