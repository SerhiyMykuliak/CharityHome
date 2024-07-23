# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "hover_box", to: "hover_box.js"
pin "text_animations", to: "text_animations.js"
pin "slider", to: "slider.js"
pin "accordion", to: "accordion.js"

pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
