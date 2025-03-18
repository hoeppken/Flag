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
            
            HStack (alignment:.top) {
                Image(flags.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                VStack (alignment: .leading) {
                    Text("Any Text")
                        .bold()
                        .padding(.bottom, 20)
                   
                }
            }
                
            Text(flags.about)
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle(flags.name)
        
    }
}
