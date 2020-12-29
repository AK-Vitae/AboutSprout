//
//  Instruction.swift
//  AboutSprout
//
//  Created by AK on 7/20/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import Foundation

struct Instruction: Identifiable, Codable {
    let id: String
    let instruction: String
    let tip: String
    
    var displayInstruction: String {
        "\(instruction)"
    }
    
}
