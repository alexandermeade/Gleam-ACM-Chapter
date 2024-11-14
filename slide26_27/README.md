# slide26_27

[![Package Version](https://img.shields.io/hexpm/v/slide26_27)](https://hex.pm/packages/slide26_27)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide26_27/)

# use in gleam

The use keyword allows you to use the body of your scope as the code for a fn that you would otherwise pass into as a parameter.

```gleam
import gleam/io

pub fn map_values(values:List(value), func:fn(value)->value) -> List(value) {
  case values {
    [first, ..rest] -> [func(first), ..map_values(rest, func)]
    [] -> [] 
  }
}
pub fn inc_all(values:List(Int)) -> List(Int) {
    use value <- map_values(values)
    value + 1
}
pub fn main() {
  inc_all([1,2,1,3,4,5]) |> io.debug
}
```

## Development

```sh
gleam run   # Run the project
```
