import Cocoa

class Location {
    var x: Int
    var y: Int
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    
}


// September at LCS
var home = Location(x: 7, y: 10)
var school = home

// Christmas location
home.x = 19
home.y = 10

// Where is home?
home.x
home.y

// Where is school?
school.x
school.y






