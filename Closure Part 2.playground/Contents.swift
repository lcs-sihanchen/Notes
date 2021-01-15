import Cocoa

var str = "Hello, playground"

// If the function specifies the type for the closure, then when the function is called, there should be a type for its parameter


//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}

// travel() is required to accept a string:

//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}





//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}


//If we call travel() using trailing closure syntax, the closure code is required to accept and return a string:

//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}




//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
// Calling travel()

//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

// the parameter is removable since swift knows "place is a string"

//travel { place -> String in
//    return "I'm going to \(place) in my car"
//}

//It also knows the closure must return a string, so return type is removable

//travel { place in
//    return "I'm going to \(place) in my car"
//}

// If the closure only has one line of code, Swift lets us remove the return keyword

//travel { place in
//    "I'm going to \(place) in my car"
//}


//Closure can also accept multiple parameters
// Work the same way as one parameter, except that another type should be included in the parameter


//func travel(action: (String, Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}

// Since the closure is declared in the function, shorthand parameters can be used as a personal preference

// travel {
//    "I'm going to \($0) at \($1) miles per hour."
// }




// (String) is the return type of the function
// Void is the return type of the closure(it doesn't return anything since print is an action, not a value)

// func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}


// when calling travel(), it becomes a closure that requires a string
// Specifying the string in the "result" to alow the closure to run and return nothing
//let result = travel()
//result("London")

// Equivalent to above
// let result2 = travel()("London")




//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}







//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}

//We can call travel() to get back the closure, then call that closure
//
//let result = travel()
//result("London")
//
//
//func travel() -> (String) -> Void {

//If a variable is created inside a closure, when its value has changed, the new value remains in this function/closure

//
//    var counter = 1
//
//    return {
//        print("\(counter). I'm going to \($0)")
//        counter += 1
//    }
//}

