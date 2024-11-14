# slide13

[![Package Version](https://img.shields.io/hexpm/v/slide13)](https://hex.pm/packages/slide13)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide13/)

# high order functions in gleam

In Gleam, functions are values and they can be assigned to variables and be passed into other functions as parameters. 

```gleam
import gleam/io
fn apply(x, func:fn(x)->Int)->Int{
  func(x)
}
fn inc(x:Int)->Int {
  x+1
}
pub fn main() {
  io.debug(apply(3, inc))
}
```

## Development

```sh
gleam run   # Run the project
```
