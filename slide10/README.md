# slide10

[![Package Version](https://img.shields.io/hexpm/v/slide10)](https://hex.pm/packages/slide10)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide10/)

# Defining functions in gleam

To define a function in Gleam, first set its privacy with the pub keyword if you want to expose it to other modules. 
Then use the fn keyword, followed by the function name, arguments, return type, and the function block.



```gleam
pub fn fizzbuzz() -> String {
  // the code…
}
// if no return type is given the fn will return nil (nothing)
pub fn main() {
  //the code…
}
```

Further documentation can be found at <https://hexdocs.pm/slide10>.

## Development

```sh
gleam run   # Run the project
```
