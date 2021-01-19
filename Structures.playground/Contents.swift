import Cocoa

// Syntax of a structure

struct Sport {
    
    // The value that is stored, and the property it has
    
    // The property that does not need to run code is called stored properties
    var name: String
    var isOlympicSport: Bool
    
    // The property stored inside a structure that requires running the code to get a result is called a computed property.
    // Return different values based on isOlympicSport values
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//var tennis = Sport(name: "Tennis")
//
//// tennis.name is a variable that can be changed
//
//print(tennis.name)


struct Progress {
    var task: String
    var amount: Int {
        // Property Observer didSet: Every time the value of "amount" changes, it changes the printing message.
        // Property Observer willSet: Takes action before a property changes(Not commonly used)
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
// Test Cases
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Method -- Functions in structures
struct City {
    var population: Int
    
    // Can always declare a method(function in a struct) using the stored properties inside of a structure
    // Method can also include parameters inside, however it also needs to be put down when calling it
    func collectTaxes(cityName:String) -> Int {
        return population * 1000
    }
}

// We can call the function like we did with different properties
let london = City(population: 9_000_000)
london.collectTaxes(cityName: "london")



// Mutating methods allow us to change the value of the stored property upon calling
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
// Test Case
var person = Person(name: "Ed")
person.makeAnonymous()



let string = "Do or do not, there is no try."
//You can read the number of characters in a string using its count property:
//Properties that the website provides
print(string.count)
//They have a hasPrefix() method that returns true if the string starts with specific letters:x
print(string.hasPrefix("Do"))
//You can uppercase a string by calling its uppercased() method:
print(string.uppercased())
//And you can even have Swift sort the letters of the string into an array:
print(string.sorted())

// My exploration
// Add another string to the existing string
print(string.appending("1"))
// Replacing a certain string with another
print(string.replacingOccurrences(of: "Do", with: "is"))

// First letter capitalization
print(string.capitalized)

// Check if it is empty
print(string.isEmpty)

// Rearrange all characters into an array
print(string.components(separatedBy: ""))


var toys = ["Woody"]
//You can read the number of items in an array using its count property:

print(toys.count)
//If you want to add a new item, use the append() method like this:

toys.append("Buzz")
//You can locate any item inside an array using its firstIndex() method, like this:

toys.firstIndex(of: "Buzz")
//That will return 1 because arrays count from 0.

//Just like with strings, you can have Swift sort the items of the array alphabetically:

print(toys.sorted())
//Finally, if you want to remove an item, use the remove() method like this:
toys.remove(at: 0)


//The array will only show everything else except for the first "1" term
toys.dropFirst(1)
// Textual reference of everything in this array
toys.description
// Remove all terms in the array while remaining its capacity
toys.removeAll(keepingCapacity: true)
// Remove everything
toys.removeAll()

