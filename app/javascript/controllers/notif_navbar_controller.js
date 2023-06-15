import { Controller } from "stimulus";



export default class extends Controller {
  static targets = ["message"];

  connect() {
    console.log("yo")
  }

  handleClick(event) {
    event.preventDefault();
    this.messageTargets.forEach((message) => {
      message.classList.remove("visible");
      message.dataset.view = "true";
    });
  }
}
