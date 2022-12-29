import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  static targets = ["gallery", "button"]
  static values = {
    interval: { type: Number, default: 0 },

  }
  connect() {
  }

  nextSlide() {
    this.galleryTargets[this.intervalValue].classList.add("d-none")
    const isLeft = event.currentTarget.classList.contains("arrow-left")
    if (isLeft) {
      this.intervalValue -= 1
    } else {
      this.intervalValue += 1
    }
    if (this.intervalValue >= this.galleryTargets.length) {
      this.intervalValue = 0
    }
    if (this.intervalValue < 0){
      this.intervalValue = this.galleryTargets.length - 1
    }
    this.galleryTargets[this.intervalValue].classList.remove("d-none")
  }
}
