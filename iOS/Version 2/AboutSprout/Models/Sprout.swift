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

import Foundation

// MARK: - Sprout2
struct Sprout2: Identifiable, Codable {
    let id, name, nomenclature, sproutDescription: String
    let recipes: [Recipe2]
    let date: String
    let versionKey: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, nomenclature
        case sproutDescription = "description"
        case recipes, date
        case versionKey = "__v"
    }
}

// MARK: - Recipe
struct Recipe2: Codable {
    let title: String
    let instructions, ingredients: [String]
    let id: String

    enum CodingKeys: String, CodingKey {
        case title, instructions, ingredients
        case id = "_id"
    }
}
