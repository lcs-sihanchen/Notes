import Cocoa

var str = "Hello, playground"

// Basic Closure Format
//let driving = {
//    print("I'm driving in my car")
//}
//
//driving()


// Like functions, closures can have parameter(but only one)
// "in" signifies the start of the main body of a closure
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//driving("London")


// Return the value (like a function)
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}



let driving = {
    print("I'm driving in my car")
}

// use closure as a parameter in the function
// void --> nothing is returned
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


// function can also be called by using these trailing closures (can also be without brackets)
// It is calling the function, and specifying the closure
// This function requires a parameter of closure, therefore it specifies one when calling using trailing closue syntax
travel() {
    print("I'm driving in my car")
}
