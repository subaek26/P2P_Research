import UIKit

func userNames() -> [String: String] {
    
    // example of list contains two users and an empty dict
    var ListOfNames = ["Sunny", "Dr. Mendes"]
    var dictionaryOfNames: NSMutableDictionary = [:]
    
    // UUID stuff
    
    for name in ListOfNames {
        let id = UUID().uuidString
        dictionaryOfNames[id] = name
    }
    return dictionaryOfNames as! [String : String]
}

userNames()
