import gleam/io

fn inc(x:Int) -> Int  {
  x+1
}

pub fn main() {
  let result = 1 |> inc |> inc |> inc
  io.debug(result) // 4
}

