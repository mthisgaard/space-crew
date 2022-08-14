import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Send the wagon crew on a mission in outer space!"],
      typeSpeed: 50,
      loop: true
    })
  }
}