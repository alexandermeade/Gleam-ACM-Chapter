# slide16_19

[![Package Version](https://img.shields.io/hexpm/v/slide16_19)](https://hex.pm/packages/slide16_19)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide16_19/)

# Control flow in gleam
In Gleam, there are no loops or if statements , in it’s place we have recursion and pattern matching using the case keyword.

Cases must have a case for every possible case or else it will cause an error.

```gleam
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

```

## Development

```sh
gleam run   # Run the project
```
