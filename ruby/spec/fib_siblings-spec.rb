require './src/fib_siblings.rb'

RSpec.describe Fib, ".siblings" do
  context "given a negative number" do
    it "returns an array of zeroes" do
      expect(Fib.siblings(-1)).to eq([0, 0])
      expect(Fib.siblings(-7)).to eq([0, 0])
    end
  end

  context "given a fibonacci number" do
    it "returns the fibonacci numbers before and after the given number" do
      expect(Fib.siblings(0)).to eq([0, 1])
      expect(Fib.siblings(1)).to eq([0, 2])
      expect(Fib.siblings(2)).to eq([1, 3])
      expect(Fib.siblings(3)).to eq([2, 5])
      expect(Fib.siblings(5)).to eq([3, 8])
    end
  end

  context "given a non-fibonacci number" do
    it "returns the fibonacci numbers before and after the given number" do
      expect(Fib.siblings(4)).to eq([3, 5])
      expect(Fib.siblings(7)).to eq([5, 8])
    end
  end
end
