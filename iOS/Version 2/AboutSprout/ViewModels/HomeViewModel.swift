//
//  HomeViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

@MainActor class HomeViewModel: ObservableObject {
    @Published private(set) var sprouts: [Sprout] = []
    
    func fetchSprouts() {
        // Call NetworkManager or Api Service
    }
}
