//
//  GrowingInstructionsDataService.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/19/22.
//

import Foundation
import Combine

class GrowingInstructionsDataService {
    
    @Published var allGrowingInstructions: [Instruction] = []
    
    var growingInstructionsSubscription: AnyCancellable?
    
    init() {
        getGrowingInstructionsFromFile()
    }
    
    private func getGrowingInstructionsFromFile() {
        growingInstructionsSubscription = Bundle.main.decodable(fileName: "growingInstructions.json")
            .sink(receiveCompletion: Bundle.main.handleDecodeCompletion, receiveValue: { [weak self] (instructions: [Instruction]) in
                self?.allGrowingInstructions = instructions
                self?.growingInstructionsSubscription?.cancel()
            })
    }
}
