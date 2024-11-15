# slide9

[![Package Version](https://img.shields.io/hexpm/v/slide9)](https://hex.pm/packages/slide9)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide9/)

# types in gleam

Since gleam is strictly typed language we must adhere to using types in the way it expects us to.
We can also give variables types using the colon syntax.
This also applies to parameters.

```gleam
pub fn main() {
  let a:Int = 3
  let b:String = 4 //this will cause an error due to mismatched types
}
```

## Development

```sh
gleam run   # Run the project
```
