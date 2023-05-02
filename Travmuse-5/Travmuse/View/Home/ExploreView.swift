//
//  ExploreView.swift
//  Travmuse
//
//  Created by Nicolas Savoini on 2023-04-21.
//

import SwiftUI

struct ExploreView: View {
    
    @EnvironmentObject var controller: TravMuseController
    
    var body: some View {
    
        ScrollView {
            
            LazyVGrid(columns: [GridItem(), GridItem()] ) {
                
                ForEach(Array(controller.getAllPosts().enumerated()), id:\.element) { index,element in
                    
                    PostView(post: element)
                        .padding(.top, (index % 2 != 0) ? 50 : 0)

                }

            }
            
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView().environmentObject(TravMuseController())
    }
}
