Code.load_file("fib_siblings.exs", __DIR__)
ExUnit.start
ExUnit.configure trace: true, exclude: :pending

defmodule FibTest do
  use ExUnit.Case
  import Fib, only: [siblings: 1]

  test "returns zeroes if given a negative number" do
    assert siblings(-1) == {0, 0}
    assert siblings(-7) == {0, 0}
  end

  test "returns the previous and next fib numbers if given a fib number" do
    assert siblings(0) == {0, 1}
    assert siblings(1) == {0, 2}
    assert siblings(2) == {1, 3}
    assert siblings(3) == {2, 5}
    assert siblings(5) == {3, 8}
    assert siblings(8) == {5, 13}
  end

  test "returns the fibonacci numbers to either side of the given number" do
    assert siblings(4) == {3, 5}
    assert siblings(6) == {5, 8}
    assert siblings(7) == {5, 8}
  end
end
