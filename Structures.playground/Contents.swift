import Cocoa

var str = "Hello, playground"

// Syntax of a structure
struct Sport {
    // The value that is stored, and the property it has
    var name: String
}

var tennis = Sport(name: "Tennis")
// tennis.name is a variable that can be changed
print(tennis.name)
