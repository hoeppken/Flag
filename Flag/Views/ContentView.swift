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
                Spacer()
                
                VStack (spacing: 50){
                    
                    ForEach(continents) { cont in
                        
                        NavigationLink {
                            
                            ContinentListView(continent: cont)
                        } label: {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.yellow)
                                    .frame(width:300)
                                
                                
                                HStack {
                                    
                                    Image(systemName: "flag.fill")
                                    Text(cont.continent).bold()
                                    
                                }.foregroundStyle(.black).padding(.vertical)
                            }
                            
                            
                        }
                        
                    }
                    
                }.padding(.horizontal)
                
                
            }.navigationTitle(Text("Choose a Continent..."))
            
        }.onAppear {
            self.continents = DataService().getFileData()
        }
       
        
    }
    
    
        
    }

    


#Preview {
    ContentView()
}
