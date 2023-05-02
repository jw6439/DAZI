

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var controller: TravMuseController
    
    @State var email = "a"
    
    var body: some View {
        
        VStack {
            
            TextField("Email", text: $email)
            
            Button("Log In") {
                controller.logUser(email: email, password: "")
            }
            
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(TravMuseController())
    }
}
