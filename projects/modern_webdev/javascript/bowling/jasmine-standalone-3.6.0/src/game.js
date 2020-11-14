class Game {
  constructor() {
    this.isPlaying = true
    this.total = 0

  }

  roll(num) {
    this.total += num;
  }

  score(num) {
    return this.total;
  }

  isOver() {
    this.isPlaying = false;
  }
}

