//
//  DetailView.swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import SwiftUI

struct DetailView: View {
    
    var flags : Flag
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            VStack (alignment:.leading) {
                Image(flags.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .shadow(radius: 1)
                   
                
                    Text("Official Flag")
                        .bold()
                        .padding(.bottom, 20)
                   
                
            }
                
            Text(flags.about)
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle(flags.name)
        
    }
}
