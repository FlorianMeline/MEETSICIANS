import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["neededInstrument", "city", "name", "style", "bio"];

  enableEdit() {
    this.targets.forEach(target => {
      const inputElement = document.createElement("input");
      inputElement.value = target.textContent;
      inputElement.addEventListener("blur", () => this.disableEdit(target, inputElement));

      target.innerHTML = "";
      target.appendChild(inputElement);
      inputElement.focus();
    });
  }

  disableEdit(target, inputElement) {
    target.innerHTML = inputElement.value;
  }
}
