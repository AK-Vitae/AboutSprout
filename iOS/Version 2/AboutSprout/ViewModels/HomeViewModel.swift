//
//  HomeViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

@MainActor class HomeViewModel: ObservableObject {
    @Published var sprouts: [Sprout] = []
    @Published var searchText = ""
    
    func fetchSprouts() {
        // Call NetworkManager or Api Service
    }
}
