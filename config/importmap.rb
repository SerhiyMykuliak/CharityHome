# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "volunteer_hover", to: "volunteer_hover"
pin "text_animations", to: "text_animations"
pin "slider", to: "slider"
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
