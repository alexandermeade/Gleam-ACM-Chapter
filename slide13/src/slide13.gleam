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

