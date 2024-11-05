import UIKit

struct User {
    let name: String
    let age: Int?
}

let user = User(name: "John", age: nil)

// IF LET
if let ager = user.age {
    print("Age: \(ager)")
} else {
    print("Age is not available")
}

// GUARD LET
func check(age: Int?) {
    guard let age else {
        print("Age is not available")
        return
    }
    
    print("Age: \(age)")
}
check(age: user.age)

// NIL COALESCING
let age: Int? = user.age ?? 0
print("Age: \(age)")


// OPTIONAL CHAINING
var optionalUser: User?
let name = optionalUser?.name ?? "Unknown"

if let newName = optionalUser?.name {
    print("New name: \(newName)")
}

// FORCE UNWRAP
let ageForce: Int = user.age!
print(ageForce)
