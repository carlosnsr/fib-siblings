/*
  Given a number, `num`, return a tuple containing the Fibonacci numbers
  immediately before (in value) and immediately after that number

  e.g.
    Fib.siblings(4) -> {3, 5}
    Fib.siblings(5) -> {3, 8}
*/
var siblings = (n) => {
  if (n < 0)
    return [0, 0]
  if (n === 1)
    return [0, 2]

  let fibs = [0, 0, 1]  // extra 0 to handle the case when n == 0
  let peek = (offset) => fibs[ fibs.length + offset ] // for Ruby-like "subscript from end"
  while (n >= peek(-1)) {
    fibs.push(peek(-1) + peek(-2))
  }
  let left = (n === peek(-2) ? peek(-3) : peek(-2))
  return [left, peek(-1)]
}

module.exports = { siblings }
