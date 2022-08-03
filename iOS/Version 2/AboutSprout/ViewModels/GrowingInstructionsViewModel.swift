//
//  GrowingInstructionsViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

@MainActor class GrowingInstructionsViewModel: ObservableObject {
    @Published private(set) var instructions: [Instruction] = []
    
    init() {
        let jsonData = loadGrowingInstructionsJson(filename: "growingInstructions")
        if let jsonData = jsonData {
            self.instructions = jsonData
        }
    }
    
    // MARK: - Investigate using a generic function
    func loadGrowingInstructionsJson(filename fileName: String) -> [Instruction]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Instruction].self, from: data)
                return jsonData
            } catch {
                print("Error occured while decoding \(fileName).json: \(error)")
            }
        }
        
        return nil
    }
}
