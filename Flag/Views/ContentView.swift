//
//  ContentView.swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State var continents = [Continent]()

    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false){
                
                VStack (spacing: 20){
                    
                    ForEach(continents) { cont in
                        
                        NavigationLink {
                            
                            ContinentListView(continent: cont)
                        } label: {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                HStack {
                                    
                                    Image(systemName: "globe.fill")
                                    Text(cont.continent).bold()
                                    
                                }.foregroundStyle(.black).padding(.vertical)
                            }
                            
                            
                        }
                        
                    }
                    
                }.padding(.horizontal)
                
                
            }.navigationTitle(Text("Continents of the World"))
            
        }.onAppear {
            self.continents = DataService().getFileData()
        }
       
        
    }
    
    
        
    }

    


#Preview {
    ContentView()
}
