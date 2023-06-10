import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["preview"];

  connect() {
    this.previewPhoto();
    this.previewAvatar();
  }
s
  preview(inputField, previewTarget) {
    inputField.addEventListener("change", (event) => {
      const file = event.target.files[0];

      if (file) {
        const reader = new FileReader();

        reader.onload = (e) => {
          previewTarget.src = e.target.result;
        };

        reader.readAsDataURL(file);
      } else {
        previewTarget.src = "";
      }
    });
  }
  previewPhoto() {
    this.preview(this.fileFieldTarget, this.previewPhotoTarget);
  }

  previewAvatar() {
    this.preview(this.fileFieldTarget, this.previewAvatarTarget);
  }

  get fileFieldTarget() {
    return this.targets.find("fileField");
  }

  previewPhotoTarget() {
    return this.targets.find("previewPhoto");
  }

  previewAvatarTarget() {
    return this.targets.find("previewAvatar");
  }
}
