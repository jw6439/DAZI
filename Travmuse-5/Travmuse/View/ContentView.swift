

import SwiftUI

/*
 

 */

struct ContentView: View {
    
    // We use the controler we inject in the file TravmuseApp.swift
    @EnvironmentObject var controller: TravMuseController
    
    var body: some View {
        
        VStack {
            
            if controller.isUserLogged {
                MainTabView()
            } else {
                LoginView()
            }
            
        }

    }
}

/*
 The preview is just for us developer to see what is happening
 This code will be exclude from the code send to the user
 
 */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TravMuseController())
    }
}
