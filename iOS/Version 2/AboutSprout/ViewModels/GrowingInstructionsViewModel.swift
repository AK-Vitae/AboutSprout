//
//  GrowingInstructionsViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI
import Combine

@MainActor class GrowingInstructionsViewModel: ObservableObject {
    @Published private(set) var instructions: [Instruction] = []
    
    private let growingInstructionsDataService = GrowingInstructionsDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        growingInstructionsDataService.$allGrowingInstructions
            .sink { [weak self] instructionsFromFile in
                self?.instructions = instructionsFromFile
            }
            .store(in: &cancellables)
    }
}
