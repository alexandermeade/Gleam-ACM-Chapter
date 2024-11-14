# slide12

[![Package Version](https://img.shields.io/hexpm/v/slide12)](https://hex.pm/packages/slide12)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide12/)

# Lists in gleam with the .. operator

In Gleam, lists function similarly to those in other languages, but we can use pattern matching to retrieve specific values. The .. operator allows us to span out a list or a record.
the assert keyword tells the compiler we expect something like a pattern or value and if there’s no pattern or value it will cause an error.

```gleam
import gleam/io

pub fn main() {
  let nums = [1,2,3,4,5]
  let assert [first, ..rest] = nums
  io.debug(first) //the first value
  io.debug(rest) //everything after the first value
}
![image](https://github.com/user-attachments/assets/5ffdb4dd-a2b5-43db-ac0b-ede953e45bd7)

```

## Development

```sh
gleam run   # Run the project
```
