import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookenator"
export default class extends Controller {
  static targets = ["button", "book", "book4Link", "book13Link"]
  connect() {
    console.log("hi")
    // this.displayBook1()
  }


  displayBook(event) {
    // on click save index of target(click)
    // this.book13Target.classList.add("d-none")
    // this.book13LinkTarget.classList.remove("active")
    // this.book4Target.classList.remove("d-none")
    // this.book4LinkTarget.classList.add("active")

    this.buttonTargets.forEach((button) => {
      button.classList.remove('active')
      this.bookTargets.forEach((book) => {
        if (button.dataset.id === book.dataset.id) {
          book.classList.add('d-none')
        } else {
          book.classList.remove('d-none')
        }
      })
    })

    // event.currentTarget.classList.add('active')
  }

  displayBook13(event) {
    this.book13Target.classList.remove("d-none")
    this.book13LinkTarget.classList.add("active")
    this.book4Target.classList.add("d-none")
    this.book4LinkTarget.classList.remove("active")

  }

  toggleInfo(event) {
    // console.log(event.currenTarget.nextElementSibling)
    event.currentTarget.nextElementSibling.classList.toggle('d-none')
  }

}
// for (var (user.books.length +1) of myArray) {

// }
