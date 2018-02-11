defmodule Fib do
  @doc """
  Given a number, `num`, return a tuple containing the Fibonacci numbers
  immediately before (in value) and immediately after that number

  e.g.
    Fib.siblings(4) -> {3, 5}
    Fib.siblings(5) -> {3, 8}
  """
  def siblings(num) when num < 0, do: {0, 0} # an error would be more appropriate
  def siblings(1), do: {0, 2} # edge case, because algorithm fails for {1, 1, 2}
  # Start from a seed value of {0, 0, 1}, and figure out the rest.
  # The extra zero handles the case when num == 0
  def siblings(num), do: _siblings(num, {0, 0, 1})

  defp _siblings(n, {_a, b, c}) when n >= c, do: _siblings(n, {b, c, b + c})
  defp _siblings(n, {a, b, c}) when n == b, do: {a, c}
  defp _siblings(_n, {_a, b, c}), do: {b, c}  # b < n < c
end
