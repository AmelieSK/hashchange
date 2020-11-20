class Veggie {
  constructor(animal) {
    this.animal = animal
  }

  talk() {
    if (this.animal === "#capybara") {
      return "Hellooo!"
    }
    else {
      return "Booo!"
    }
  }
}