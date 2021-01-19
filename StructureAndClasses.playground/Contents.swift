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
// If changing home, also change school, and vice versa
home.x = 19
home.y = 10

// Where is home?
home.x
home.y

// Where is school?
// With class - affect the copy - single location in memory
// With structure - doesn't affect the copy - separate location in memory

school.x
school.y






