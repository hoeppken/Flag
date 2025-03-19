//
//  ContinentListView.swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import SwiftUI

struct ContinentListView: View {
    
    var continent : Continent
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            
            LazyVGrid (columns: [GridItem(spacing: 20),GridItem(spacing: 20)], spacing: 20){
                
                ForEach (continent.flags) { f in
                
                    NavigationLink {
                        DetailView(flags: f )
                    } label: {
                        Image(f.image).resizable().aspectRatio(contentMode:.fill).cornerRadius(10).clipped().shadow(radius: 10)
                    }
                    
                    
                }
                
            }.padding()
                .navigationTitle(continent.continent)
            
        }
        
        
    }
}
