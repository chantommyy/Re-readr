import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabulator"
export default class extends Controller {
  static targets = ["profile", "books", "reviews", "profileLink", "reviewsLink", "booksLink"]
  connect() {
    // this.showTab()
    this.displayBooks()

  }
  displayProfile(event) {
    // on click save index of target(click)
    this.booksTarget.classList.add("d-none")
    this.profileTarget.classList.remove("d-none")
    this.profileLinkTarget.classList.add("active")
    this.booksLinkTarget.classList.remove("active")

  }
  displayBooks() {
    this.profileTarget.classList.add("d-none")
    this.booksTarget.classList.remove("d-none")
    this.booksLinkTarget.classList.add("active")
    this.profileLinkTarget.classList.remove("active")

  }


}
// action -click
// target is each of the contents eg profile target books target
