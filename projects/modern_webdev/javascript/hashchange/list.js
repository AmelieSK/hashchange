class List {
  constructor(element) {
    this.element = element
    this.veggies = [
      {
        id: '101',
        type: 'carrot',
        cohort_member: 'Anastasios',
        thumbnail: 'https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg'
      },
      {
        id: '3',
        type: 'sweet-potato',
        cohort_member: 'Sabiha',
        thumbnail: 'https://img1.mashed.com/img/gallery/mistakes-youre-making-when-you-cook-sweet-potatoes/intro-1586457732.jpg'
      },
      {
        id: '17',
        type: 'cherry-tomato',
        cohort_member: 'Amy',
        thumbnail: 'https://www.gardeningknowhow.com/wp-content/uploads/2009/04/cherry-tomatoes-1.jpg'
      }
    ]
    this.setup()
  }

  setup() {
    window.addEventListener('hashchange', (event) => {
      event.preventDefault()
      let veggie = this.veggies.filter(veggie => veggie.id === window.location.hash.slice(1))[0]
      let html = [
        `<h1>${veggie.cohort_member}</h1>`,
        `<img src="${veggie.thumbnail}">`,
        `<p>${veggie.type}</p>`
      ]
      this.element.innerHTML = html.join("")
    })
    this.render()
  }

  render() {
    this.element.innerHTML = this.veggies.map(veggie => `<p><a href="#${veggie.id}">${veggie.type}</a></p>`).join("")
  }
}