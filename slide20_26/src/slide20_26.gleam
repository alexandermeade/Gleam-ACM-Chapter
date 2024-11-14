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



