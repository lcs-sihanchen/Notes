import Cocoa


struct User {
    var username: String
    
    
}

extension User {
    // Initializer provides a value for each property
    init() {
        username = "Anonymous"
        print("Creating a new user!\(username)")
    }
}
// Runs the initializer code since there is nothing specified
var user = User()
var user2 = User(username:"ss")
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
//struct Person {
//    var name: String
//    // Create the property familyTree upon calling
//    // If we don't want it to be created(not necessary at all times), use lazy
//
//
//    //    var familyTree = FamilyTree()
//
//
//    // No difference except it is not stored internally
//    lazy var familyTree = FamilyTree()
//
//    init(name: String) {
//        self.name = name
//    }
//}

//var ed = Person(name: "Ed")

//ed.familyTree



struct Student {
    // Static means the property is shared within the structure, not used in one of the instances
    // In this case only the change in structure with trigger the change in this variable
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        // don't have to use self. for static properties
        Student.classSize += 1
    }
}

// Since it is a property of a structure rather than of an instance, we call it by the structure name
// taylor.classSize would not return any result since static property does not work for instances

print(Student.classSize)

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")


struct Person {
    public var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}


var ad = Person(id: "12345")

// These code below can only be called when the property is public
// They are inaccessible if it is called private inside
print(ad.id)
ad.id = "23456"
print(ad.id)
