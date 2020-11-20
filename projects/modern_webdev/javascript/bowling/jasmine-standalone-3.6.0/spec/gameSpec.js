describe('Game', () => {
  let game
  beforeEach(() => {
    game = new Game()
  })

  describe('Game states', () => {
    
    it('is playing is on by default', () => {
      expect(game.isPlaying).toEqual(true)
    })

    it('is over', () => {
      game.isOver()
      expect(game.isPlaying).toEqual(false)
    })
  })

  describe('Gutter game', () => {
    it('returns 0 when no pins are hit', () => {
      for(i = 0; i < 20; i++) {
        game.roll(0);
    }
    expect(game.score()).toEqual(0)
    })
  })

  describe('Game', () => {
    it('returns 20 when 1 pin is hit in each roll', () => {
      for(i = 0; i < 20; i++) {
        game.roll(1);
    }
    expect(game.score()).toEqual(20)
    })

    it('it calculated the correct score when a spare is rolled', () => {
      game.roll(5);
      game.roll(5);
      game.roll(3);
      rollMany(0, 17);
      expect(game.score()).toEqual(16)
    })

    it('should return the correct score when a strike is rolled', () => {
      game.roll(10);
      game.roll(1);
      game.roll(1);
      rollMany(0, 17);
      expect(game.score()).toEqual(14)
    })

    function rollMany(num, rolls) {
      for(let i = 0; i < rolls; i ++) {
        game.roll(num);
      }
    }

  })

});