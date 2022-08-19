//
//  SproutDataService.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/18/22.
//

import Foundation
import Combine

class SproutDataService {
    
    @Published var allSprouts: [Sprout2] = []
    
    var sproutSubscription: AnyCancellable?
    
    init() {
        getSprouts()
    }
    
    private func getSprouts() {
        guard let url = URL(string: "http://localhost:8081/sprouts") else { return }
        
        sproutSubscription = NetworkManager.download(url: url)
            .decode(type: [Sprout2].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedSprouts) in
                self?.allSprouts = returnedSprouts
                self?.sproutSubscription?.cancel()
            })
    }
}
