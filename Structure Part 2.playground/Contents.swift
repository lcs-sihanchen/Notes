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


