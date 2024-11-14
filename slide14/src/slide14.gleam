import gleam/io

fn apply(x, func:fn(x)->Int)->Int{
  func(x)
}

pub fn main() {
  io.debug(apply(3, fn(x){x+1}))
}

