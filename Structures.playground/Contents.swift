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






