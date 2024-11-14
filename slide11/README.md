# slide11

[![Package Version](https://img.shields.io/hexpm/v/slide11)](https://hex.pm/packages/slide11)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide11/)


# implicit returns in gleam

When returning a value from a function and or block in gleam you simply use an expression as the last statement of the function and or block.  

```gleam
import gleam/io
pub fn sum(a:Int, b: Int) -> Int {
  a + b //returns the sum of two numbers 
}
pub fn main() {
  io.debug(sum(1, 1))
}
```

## Development

```sh
gleam run   # Run the project
```
