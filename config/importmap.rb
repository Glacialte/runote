# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "marked", to: "https://cdn.jsdelivr.net/npm/marked@12.0.2/lib/marked.esm.js"
pin "dompurify", to: "https://cdn.jsdelivr.net/npm/dompurify@3.1.5/dist/purify.es.mjs"
