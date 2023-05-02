//
//  HomeView.swift
//  Travmuse
//
//  Created by Nicolas Savoini on 2023-04-21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab: Int = 0
    /*
     
     @State -> Will allow thew view to refresh on change
     
     private -> Scope,
        private -> Not accessible from anywhere else
     
     var -> Defclare a variable that can change
     
     selectedTab -> Name of the variable
     
     : Int -> Type of the variable (Integer)
     
     = 0 -> Default value
     
     */
    
    var body: some View {
        
        VStack {
        
            
            Picker("", selection: $selectedTab) {
                
                mySmallView()
                    .tag(0)
                    
                Text("Nearby")
                    .tag(1)
                
            }
            .pickerStyle(.segmented)
            
            switch(selectedTab) {
                case 0: ExploreView()
                case 1: NearbyView()
                default:
                    ExploreView()
            }
            
            
            Spacer()
            
        }
    }
}

struct mySmallView: View {
    var body: some View {
        Text("Explore").font(.largeTitle)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
