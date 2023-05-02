

import SwiftUI

/*
 This is the starting point of the program
 the "@main" is telling Swift to start with this
 */

@main
struct TravmuseApp: App {
    
    // We create an instance of our application Controller
    var travMuseController = TravMuseController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // We inject our controller in the first screen of the App
                // that way, Swift will be able to pass from screen to screen
                .environmentObject(travMuseController)
        }
    }
}
