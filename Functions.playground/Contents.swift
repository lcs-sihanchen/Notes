import Cocoa

var str = "Hello, playground"

// The format of declaring a function
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
// Call the function
printHelp()




// Specify a return type and return the values
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)


// External parameter name "to" when we actually call the function
// Internal parameter name "name" for programmers to understand
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
// Make the code more readable
sayHello(to: "Taylor")



// use "_" to have no parameter name

//func greet(_ person: String) {
//    print("Hello, \(person)!")
//}
//
//greet("Taylor")



// Default parameter ---> can be used when having a default condition(unless changed otherwise inside the function)
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)



// "..." allows multiple instances to be put inside the parentheses(passed as an array), and operate them at the same time(return as an array if trying to return)

func square(numbers: Int...) -> [Int]{
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
    return numbers
}

square(numbers: 1, 2, 3, 4, 5)


// Needs enumeration before throwing a function
enum PasswordError: Error {
    case obvious
    case needsUppercase
}

// Perform a security check on a given password
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    } else if password == password.lowercased() {
        // If the password was "secret" then it will equal "secret".lowercased()
        // If the password was "sEcREt" then it will not equal "sEcREt".lowercased()
        throw PasswordError.needsUppercase
    }
// Return true as default if they meet the requirement
    return true
}

// Try out a password to see if it is secure

// Do --> start the code that might have a problem
do {
    // check the password in the function, if there is a problem, it will throw an error inside this "do", and it will catch what ever case that's being thrown and give a response
    try checkPassword("password")
    print("That password is good!")
} catch PasswordError.obvious {
    print("You can't use that password because it is too easy to guess.")
} catch PasswordError.needsUppercase {
    print("You can't use that password because it contains no uppercase characters.")
} catch {
    // NOTE: Not a great error message; we try to be specific
    print("You can't use that password.")
}


// allows variable input since inout allows change inside the function, instead of having constants all the time
func doubleInPlace(number: inout Int) {
    number *= 2
}


var myNum = 10
doubleInPlace(number: &myNum)

