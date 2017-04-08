const expect = require('chai').expect
const fib = require('../src/fib_siblings.js')

describe("fib", function() {
  describe("siblings", function() {
    it ("returns zeroes if given negative numbers", function() {
      expect(fib.siblings(-1)).to.deep.equal([0, 0])
    })

    it ("returns the fibonacci numbers before and after the given number", function() {
      expect(fib.siblings(4)).to.deep.equal([3, 5])
      expect(fib.siblings(7)).to.deep.equal([5, 8])
    })

    it ("returns the previous and next fib numbers, if given a fib number", function() {
      expect(fib.siblings(0)).to.deep.equal([0, 1])
      expect(fib.siblings(1)).to.deep.equal([0, 2])
      expect(fib.siblings(2)).to.deep.equal([1, 3])
      expect(fib.siblings(3)).to.deep.equal([2, 5])
      expect(fib.siblings(5)).to.deep.equal([3, 8])
    })
  })
})
