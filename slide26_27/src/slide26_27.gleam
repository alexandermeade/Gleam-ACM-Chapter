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



