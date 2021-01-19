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




struct Person {
    
    var name: String
    
    init(name: String) {
        // "\(name)" refers to the parameter "name" of the initializer
        print("\(name) was born!")
        // self.name is the property "name" in the structure
        self.name = name
    }
}


