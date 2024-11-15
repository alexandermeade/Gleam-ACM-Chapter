# slide8

[![Package Version](https://img.shields.io/hexpm/v/slide8)](https://hex.pm/packages/slide8)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide8/)

# Immutablity in gleam

In gleam you set variables using the let keyword.
Once a variable is set you can not change its value however you can reuse the name of a variable and gleam will use the newly assigned variable in its place. 

```gleam
pub fn main() {
  let a = 3 // creates the variable a
  let a = 2  // this is creating a new binding of the variable a and is allowed
  a = 3 // this is a reassignment and will cause an error
}
```

## Development

```sh
gleam run   # Run the project
```
