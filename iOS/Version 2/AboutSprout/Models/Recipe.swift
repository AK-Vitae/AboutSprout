//
//  Recipe.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 9/7/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var image: String {
        "\(title)"
    }
    var instructions: [String]
    var ingredients: [String]
}
