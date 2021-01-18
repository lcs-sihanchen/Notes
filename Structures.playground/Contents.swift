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


