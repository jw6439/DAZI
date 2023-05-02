

import SwiftUI

struct MainTabView: View {
    
   
    var body: some View {
        
        // It creates the bottom tab View for the All App
        // Each entry will be a button
        TabView {
            
            // MARK: HOME VIEW
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            // MARK: SEARCH VIEW
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            // MARK: ADD POST VIEW
            AddPostView()
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            // MARK: CHAT VIEW
            ChatView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                }
            
            // MARK: PROFILE VIEW
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
            
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
