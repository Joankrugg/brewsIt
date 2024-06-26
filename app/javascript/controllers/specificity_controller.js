// app/javascript/controllers/specificity_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["snack", "happyHour", "cheapestBeer", "draftNumber"]

  connect() {
    console.log("SpecificityController connected")
  }

  submitForm(event) {
    console.log("Submitting form")
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.submit()
    }, 200)
  }
}

