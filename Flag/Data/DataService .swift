//
//  DataService .swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import Foundation

struct DataService {
    
    func getFileData() -> [Continent] {
        
        // Get the file path to data.json
        
        if let url =  Bundle.main.url(forResource: "dataFlags", withExtension: "json") {
            
            
            
            
            do {
                //Read the File and turn it into Data
                let  dataFlags = try Data(contentsOf: url)
                
                //Parse data into Swift instances
                let decoder = JSONDecoder()
                
                
                do {
                    let continents = try decoder.decode([Continent].self, from: dataFlags)
                    return continents
                }
                catch {
                    print("Could not parse JSON: \(error)")
                }
                
            }
            
            
            
            catch {
                print("Failed to read file: \(error)")
            }
            
            
            
        }
        return [Continent]()
        
        
        
    }
    
}
