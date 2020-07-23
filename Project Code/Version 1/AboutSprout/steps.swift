//
//  steps.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 7/20/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct steps: View {
    let instruction: Instruction
    var body: some View {
        Text(instruction.displayInstruction)
    }
}

struct steps_Previews: PreviewProvider {
    static let instructions: [Instruction] = Bundle.main.decode("steps.json")
    static var previews: some View {
        steps(instruction: instructions[1])
    }
}
