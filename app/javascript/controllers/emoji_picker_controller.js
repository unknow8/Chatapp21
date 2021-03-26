import { Controller } from "stimulus"
import { EmojiButton } from '@joeattardi/emoji-button';

export default class extends Controller {
  static targets = [ "form", "input" ]

  connect() {
    this.picker = new EmojiButton()
    this.picker.on('emoji', emoji => {
      this.formTarget.innerHTML = emoji
      this.inputTarget.value = emoji
    })
  }

  toggle(event) {
    event.preventDefault()
    this.picker.togglePicker(event.target)
  }
}