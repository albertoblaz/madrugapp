import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input"]

  escClose(event) {
    if (event.key === 'Escape') {
      this.inputTarget.value = this.inputTarget.defaultValue
    }
  }
}
