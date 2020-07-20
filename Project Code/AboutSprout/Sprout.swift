//
//  Sprout.swift
//  AboutSprout
//
//  Created by AK on 7/15/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import Foundation

struct Sprout: Identifiable, Codable {
    let id: String
    let name: String
    let nomenclature: String
    let description: String
    let recipe: String
    
    var displayName: String {
        "\(id.capitalized)"
    }
    
    var image: String {
        "\(id)"
    }
    
}
