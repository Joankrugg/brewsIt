import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import Rails from "@rails/ujs";
Rails.start();

document.addEventListener("turbolinks:load", () => {
  let token = document.querySelector('meta[name="csrf-token"]').content;
  $.ajaxSetup({
    headers: {
      'X-CSRF-Token': token
    }
  });
});
