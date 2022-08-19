//
//  HomeViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI
import Combine

@MainActor class HomeViewModel: ObservableObject {
    @Published var sprouts: [Sprout2] = []
    @Published var searchText = ""
    
    private let sproutDataService = SproutDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        sproutDataService.$allSprouts
            .sink { [weak self] returnedSprouts in
                self?.sprouts = returnedSprouts
            }
            .store(in: &cancellables)
    }
    
    func fetchSprouts() {
        
    }
}
