# slide15

[![Package Version](https://img.shields.io/hexpm/v/slide15)](https://hex.pm/packages/slide15)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide15/)

# the |> operator in gleam
In Gleam, the pipe(|>) operator is used to take the result of the preceding expression and use that as the first parameter for a function call.


```gleam
import gleam/io

fn inc(x:Int) -> Int  {
  x+1
}

pub fn main() {
  let result = 1 |> inc |> inc |> inc
  io.debug(result) // 4
}
```

## Development

```sh
gleam run   # Run the project
```
