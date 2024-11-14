//slide 16
import gleam/io
import gleam/int

pub fn main() {
  let ticket = 3
  case ticket {
    1 ->  "you won"
    2  |  3 -> "you lost"
    n -> "invalid ticket"
  } |> io.println
}

//slide 17

fn fizzbuzz(x: Int) -> String {
  case x%3, x%5 {
    0, 0 -> "fizzbuzz"
    0, _ -> "fizz"
    _, 0 -> "buzz"
    _, _ -> int.to_string(x)
  }
}

//slide 18

fn remove_3(list: List(Int)) -> List(Int) {
  case list {
    [3, ..rest] -> remove_3(rest)
    [head, ..tail] -> [head, ..remove_3(tail)]
    [] -> []
  }
}


//slide 19

fn dec_in_range(x:Int, min: Int, max: Int) -> Int {
  case x {
    x if x - 1 < min || x-1 > max -> x
    x -> x-1
  }
}

