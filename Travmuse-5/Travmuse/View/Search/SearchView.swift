

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    @State var displayResult = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                TextField("Search", text: $searchText)
                Spacer()
                
                Button(action: {
                    displayResult.toggle()
                }, label: {
                    Image(systemName: "magnifyingglass")
                })
                
            }.padding()
            
            Divider()
            
        
            HStack {
                Text("Result")
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            
            if displayResult {
                List {
                    PostView(post: testPosts[2], displayImage: false)
                    PostView(post: testPosts[4], displayImage: false)
                    PostView(post: testPosts[6], displayImage: false)
                }.listStyle(.plain)
            }
            
            
            Spacer()
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
