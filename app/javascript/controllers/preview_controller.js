import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['previewImage']

  display(event) {
    const input = event.target
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = (e) => {
        this.previewImageTarget.src = e.target.result
      }
      reader.readAsDataURL(input.files[0])
    }
  }
}
