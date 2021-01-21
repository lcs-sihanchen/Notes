import Cocoa

// Optional Chaining
// Don't know if the function will return a value, so we use "String?"
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    // If it's not any of the case above, return nil
    default: return nil
    }
}
// Album may or may not have a value, therefore we add "?" to let swift know if there is nil, the code shouldn't run
//let album = albumReleased(year: 2006)?.uppercased()
//print("The album is \(album)")

// Nil coalescing operator
// Give a default value when a nil occurs
let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")



// Enumeration
// Enum creates a type
enum WeatherType {
    case sun
    case cloud
    case rain
    // need input when declared
    case wind(speed: Int)
    case snow
}


func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
        
    // declare a constant here and use where to check its values
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: .cloud)



// Loop Review
// While Loop
var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    // Need a case to break from the loop in order to stop it from running infinitely
    if counter == 556 {
        break
    }
}


var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong with Me" {
        // Continue means skip the one that is being iterated
        // Break means stop execution of code
        continue
    }

    print("My favorite song is \(song)")
}
