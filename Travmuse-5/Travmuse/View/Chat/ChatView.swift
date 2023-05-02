

import SwiftUI

struct ChatView: View {
    
    var body: some View {
    
        VStack {
            
            Text("Notifications")
                .font(.largeTitle)
                .padding(.trailing)
            
            List {
                
                HStack {
                    // Picture
                    Image("demoImage")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .opacity(0.7)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    
                    // Notif
                    Text("Vivian Hu liked your post")
                }.frame(maxHeight: 55)
                
                HStack {
                    // Picture
                    Image("demoImage")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .opacity(0.7)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    
                    // Notif
                    Text("Danny Colin started following you")
                }.frame(maxHeight: 55)
                
            }.listStyle(.plain)
            
            Spacer()
            
            Text("Messages")
                .font(.largeTitle)
                .padding(.trailing)
            
            List {
                
                HStack {
                    // Picture
                    Image("demoImage")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .opacity(0.7)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    
                    // Name + Message
                    VStack (alignment: .leading) {
                        Text("Jay Kim")
                            .bold()
                        Text("Hi, I saw your post")
                    }
                }.frame(maxHeight: 55)
                
                HStack {
                    // Picture
                    Image("demoImage")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .opacity(0.7)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    
                    // Name + Message
                    VStack (alignment: .leading) {
                        Text("Nick Yang")
                            .bold()
                        Text("Hi, I saw your post...")
                    }
                }.frame(maxHeight: 55)
                
            }.listStyle(.plain)
            
            Spacer()
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
