//
//  Continent.swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import Foundation

struct Continent: Decodable, Identifiable {
    
    let id = UUID()
    var continent: String
    var flags: [Flag]
    
    
}
