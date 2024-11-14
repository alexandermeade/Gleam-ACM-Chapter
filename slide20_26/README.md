# slide20_26

[![Package Version](https://img.shields.io/hexpm/v/slide20_26)](https://hex.pm/packages/slide20_26)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/slide20_26/)

# Custom types in gleam
In gleam you can create a custom type by using the type keyword.

In this example this works as an enum.

types are always uppercase.


```gleam
//slide 20
type CollegeMajor {
  ME
  Art
  Business
  CS
}

//slide 21
type Wallet {
  HasWallet(Int)
  NoWallet
}

//slide 22
fn pay(wallet: Wallet, cost: Int) ->  Int {
  case wallet {
     HasWallet(amount) -> amount – cost
     NoWallet -> -cost
  }
}


//slide 23
type CollegeStudent {
 CollegeStudent(name: String, major: CollegeMajor)
}

//slide 24
type Option (inner) {
  Some(inner)
  None
}

//slide 25

type LinkedList(value_type) {
 LinkedList(value: value_type, next:     LinkedList(value_type))
}
```

## Development

```sh
gleam run   # Run the project
```
