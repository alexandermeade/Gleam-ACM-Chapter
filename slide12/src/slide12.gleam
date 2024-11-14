import gleam/io

pub fn main() {
  let nums = [1,2,3,4,5]
  let assert [first, ..rest] = nums
  io.debug(first) //the first value
  io.debug(rest) //everything after the first value
}

