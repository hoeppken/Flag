//
//  Flag.swift
//  Flag
//
//  Created by Rafael dos Santos Varela on 17.03.25.
//

import Foundation

struct Flag: Decodable, Identifiable {
    
    let id = UUID()
    var name: String
    var about: String
    var image: String
    
}
