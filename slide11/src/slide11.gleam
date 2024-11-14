import gleam/io
pub fn sum(a:Int, b: Int) -> Int {
  a + b //returns the sum of two numbers 
}
pub fn main() {
  io.debug(sum(1, 1))
}

