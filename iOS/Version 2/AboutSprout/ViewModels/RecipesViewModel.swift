//
//  RecipesViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

@MainActor class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    func fetchSprouts() {
        // Call NetworkManager or Api Service
    }
}
