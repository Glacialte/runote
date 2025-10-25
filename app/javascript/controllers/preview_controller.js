import { Controller } from "@hotwired/stimulus"
import { marked } from "marked"
import DOMPurify from "dompurify"

// data-controller="preview"
export default class extends Controller {
  static targets = ["input", "output"]

  connect() {
    this.update()
  }

  update() {
    const raw = this.inputTarget.value || ""
    const html = marked.parse(raw)
    this.outputTarget.innerHTML = DOMPurify.sanitize(html)
  }
}
