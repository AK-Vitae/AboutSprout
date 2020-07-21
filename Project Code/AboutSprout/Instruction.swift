//
//  Instruction.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 7/20/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import Foundation

struct Instruction: Identifiable, Codable {
    let id: String
    let instruction: String
    
    var displayInstruction: String {
        "\(instruction)"
    }
    
}
