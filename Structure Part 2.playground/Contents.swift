import Cocoa


struct User {
    var username: String
    
    // Initializer provides a value for each property
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

// Runs the initializer code since there is nothing specified
var user = User()
print(user.username)




//struct Person {
//
//    var name: String
//
//    init(name: String) {
//        // "\(name)" refers to the parameter "name" of the initializer
//        print("\(name) was born!")
//        // self.name is the property "name" in the structure
//        self.name = name
//    }
//}



struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person {
    var name: String
    // Create the property familyTree upon calling
    // If we don't want it to be created(not necessary at all times), use lazy

    
    //    var familyTree = FamilyTree()
    
    
    // No difference except it is not stored internally
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

ed.familyTree


