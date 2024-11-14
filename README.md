# Gleam-ACM-Chapter

set it up

```
  mkdir presentation
  cd ./presentation
  git clone https://github.com/alexandermeade/Gleam-ACM-Chapter.git
```

to run one of the slides from the terminal<br/>
```
  cd ./name_of_the_slide
  gleam run
```

# The anatomy of a gleam program

[link to slide 7]("https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide7")


```
import gleam/io // this is a module
//gleam programs start from a main function
//gleam’s indentation convention is 2 spaces.
pub fn main() {
  io.println("Hello world!“ ) //statements end without punctuation 
}
```

# Immutability in gleam

[link to slide 8](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide8)

```
pub fn main() {
  let a = 3 // creates the variable a
  let a = 2  // this is creating a new binding of the variable a and is allowed
  a = 3 // this is a reassignment and will cause an error
}
```

# types in gleam 


[link to slide 9](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide9)

```
pub fn main() {
  let a:Int = 3
  let b:String = 4 //this will cause an error due to mismatched types
}
```

# defining functions in gleam

[link to slide 10](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide10)

```
pub fn fizzbuzz() -> String {
  // the code…
}
// if no return type is given the fn will return nil (nothing)
pub fn main() {
  //the code…
}
```

# implicit returns in gleam

[link to slide 11](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide11)

```
import gleam/io
pub fn sum(a:Int, b: Int) -> Int {
  a + b //returns the sum of two numbers 
}
pub fn main() {
  io.debug(sum(1, 1))
}
```

# lists in gleam with the .. operator

[link to slide 12](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide12)

```
import gleam/io

pub fn main() {
  let nums = [1,2,3,4,5]
  let assert [first, ..rest] = nums
  io.debug(first) //the first value
  io.debug(rest) //everything after the first value
}
```

# higher order functions in gleam

[link to slide 13](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide13)

```
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

# anonymous functions in gleam

[link to slide 14]https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide14)

```
import gleam/io
fn apply(x, func:fn(x)->Int)->Int{
  func(x)
}

pub fn main() {
  io.debug(apply(3, fn(x){x+1}))
}
```

# the |> operator gleam


[link to slide 15](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide15)

```
import gleam/io

fn inc(x:Int) -> Int  {
  x+1
}

pub fn main() {
  let result = 1 |> inc |> inc |> inc
  io.debug(result) // 4
}
```

# Control flow in gleam

[link to slide 16 through 19 ](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide16_19)

```
//slide 16
import gleam/io
import gleam/int

pub fn main() {
  let ticket = 3
  case ticket {
    1 ->  "you won"
    2  |  3 -> "you lost"
    n -> "invalid ticket"
  } |> io.println
}

//slide 17

fn fizzbuzz(x: Int) -> String {
  case x%3, x%5 {
    0, 0 -> "fizzbuzz"
    0, _ -> "fizz"
    _, 0 -> "buzz"
    _, _ -> int.to_string(x)
  }
}

//slide 18

fn remove_3(list: List(Int)) -> List(Int) {
  case list {
    [3, ..rest] -> remove_3(rest)
    [head, ..tail] -> [head, ..remove_3(tail)]
    [] -> []
  }
}


//slide 19

fn dec_in_range(x:Int, min: Int, max: Int) -> Int {
  case x {
    x if x - 1 < min || x-1 > max -> x
    x -> x-1
  }
}
```

# Custom types, contained types, records; matching contained types,  generic types and records.

[link to slide 20 through 26](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide20_26)

```
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

#  Generic Functions in gleam

[link to slides 26 through 27](https://github.com/alexandermeade/Gleam-ACM-Chapter/tree/main/slide26_27)

```
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
