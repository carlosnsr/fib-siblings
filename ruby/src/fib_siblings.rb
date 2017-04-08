module Fib
  #   Given a number, `num`, return a tuple containing the Fibonacci numbers
  #   immediately before (in value) and immediately after that number
  #
  #   e.g.
  #     Fib.siblings(4) -> {3, 5}
  #     Fib.siblings(5) -> {3, 8}
  def self.siblings(num)
    return [0, 0] if num < 0
    return [0, 2] if num == 1  # edge case not handled by our algorithm
    fibs = [0, 0, 1]  # extra 0 to handle the case when n == 0
    fibs.push(fibs[-1] + fibs[-2]) while (num >= fibs[-1])
    left = (num == fibs[-2] ? fibs[-3] : fibs[-2])
    [left, fibs[-1]]
  end
end
