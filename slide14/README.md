# slide14

[![Package Version](https://img.shields.io/hexpm/v/slide14)](https://hex.pm/packages/slide14)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide14/)

# anonymous functions in gleam
In Gleam, anonymous functions are function literals that allow you to write and use a function without declaring one. 

```gleam
import gleam/io
fn apply(x, func:fn(x)->Int)->Int{
  func(x)
}

pub fn main() {
  io.debug(apply(3, fn(x){x+1}))
}
```

## Development

```sh
gleam run   # Run the project
```
