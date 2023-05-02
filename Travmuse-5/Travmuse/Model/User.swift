

import Foundation

/*
 This struct represent a user
 */

struct User: Hashable {
    
    var id = UUID()
    
    var email = ""
    var phone = ""
    var fistName = ""
    var lastName = ""
    
    var aboutMe = ""
    
    /**
     This is a dynamic property, i.e it is calculated in real time.

     
     */
    
    var fullName: String {
        return "\(fistName) \(lastName)"
    }
    
}
