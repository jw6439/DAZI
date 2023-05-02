

import Foundation

/*
 This is our application Controller
 iOS app usually use the Model-View-Controller (MVC) pattern
 https://medium.com/ios-os-x-development/modern-mvc-39042a9097ca
 */

final class TravMuseController: ObservableObject {
    
    // @Publisehd allow us to ask Swift to refresh the screen when the value changes
    @Published var isUserLogged = false
    
    // This represent the user that is logged
    @Published var user: User?
    
    
    // MARK: LOG USER
    /*
     This function helps us to log, or not, a user
     As we do not have a full back-end, we use something very simple so we can test
     */
    func logUser(email: String, password: String) {
        
        if email == "a" {
            
            isUserLogged = true;
            user = jocelyn // This is for testing purpose only.
        }
        
    }
    
    
    
    // MARK: GET POST
    /*
     This function return all the post
     As per MVC, the controller is the link between the data and the UI
     the posts are data.
     */
    func getAllPosts() -> [Post] {
        
        return testPosts
    }
    
}
