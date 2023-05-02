

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var controller: TravMuseController
    
    @State var aboutMe = ""
    
    @State var displayListPost = true
        
    var body: some View {
        
        VStack {
            
            HStack {
                
                // Picture
                Image("demoImage")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .opacity(0.7)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding()
                
                // Ab
                TextField("About Me:", text: $aboutMe, axis: .vertical)
                    .lineLimit(5, reservesSpace: true)
                    .multilineTextAlignment(.leading)
                    .border(.black, width: 1)
                    .padding(.trailing)
                
                // You can use a TextEditor if you want to allow the user to have multiple line in its bio.
//                TextEditor(text: <#T##Binding<String>#>)
            
            }
        
            HStack {
                Spacer()
                
                Button("Save") {
                    // We save the data from the view to the controller
                    controller.user?.aboutMe = aboutMe
                }
                .buttonStyle(.bordered)
                .padding(.trailing)
                
            }
            
            HStack {
                
                Spacer()
                

                Button(action: {
                    displayListPost = true
                }, label: {
                    Image(systemName: "text.badge.checkmark")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .opacity(displayListPost ? 1 : 0.5)

                })
                
                Spacer()
                
                Button(action: {
                    displayListPost = false
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .opacity(displayListPost ? 0.5 : 1)
                })
                
                Spacer()
                
            }
            
                       
            if displayListPost {
                
                Text("Posts")
                
            } else {
                
                Text("Faveorite")
                
            }
            
            
            
            Spacer()
            
        }.onAppear {
            // Take the data from the controller to be displayed on the screen
            aboutMe = controller.user?.aboutMe ?? ""
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(TravMuseController())
    }
}
