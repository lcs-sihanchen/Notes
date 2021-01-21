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
let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")
