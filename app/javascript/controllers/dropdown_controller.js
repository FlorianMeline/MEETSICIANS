import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ["menu"]

  connect() {
    console.log("Hello");
    useClickOutside(this, { element: this.menuTarget })
  }

  toggle() {
    this.menuTarget.style.display = "block";
    this.menuTarget.classList.add("dropped");
    this.element.classList.add("dropped");
  }

  clickOutside(event) {
    // example to close a modal
    event.preventDefault()
    this.menuTarget.style.display = "none";
    this.menuTarget.classList.remove("dropped");
    this.element.classList.remove("dropped");
  }

}
