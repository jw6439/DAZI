

import SwiftUI

struct PostView: View {
    
    var post: Post
    
    var displayImage = true
    
    var body: some View {
        
        VStack {
            
            HStack {
                Image(systemName: "moonphase.waning.crescent")
                Text("\(post.user.fullName)")
            }
            
            if displayImage {
                
                HStack {
                    Image("\(post.image)")
                        .resizable()
                        .scaledToFit()
                }
            }
            
            HStack {
                Text("\(post.city)")
                    .font(.caption)
                    .padding(.leading)
                Spacer()
            }
            HStack {
                Spacer()
                Text("\(post.dateRange)")
                    .font(.caption)
                    .padding(.trailing)
            }
        }

    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: testPosts[0])
    }
}
