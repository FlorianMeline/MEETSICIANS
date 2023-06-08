import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  connect() {
    // console.log('zboooob', this.element)
  }

  toggle() {
    this.menuTarget.style.display = "block";
    this.menuTarget.classList.add("dropped");
  }

}
