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

// app/javascript/packs/application.js

import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
ActiveStorage.start();

if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('/service_worker.js')
      .then(registration => {
        console.log('ServiceWorker registration successful with scope: ', registration.scope);
      }).catch(error => {
        console.log('ServiceWorker registration failed: ', error);
      });
  });
}
