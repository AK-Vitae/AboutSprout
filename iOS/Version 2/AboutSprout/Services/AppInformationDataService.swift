//
//  AppInformationDataService.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/19/22.
//

import Foundation
import Combine

class AppInformationDataService {
    
    @Published var appInformation: AppInformation?
    
    var appInformationSubscription: AnyCancellable?
    
    init() {
        getAppInformationFromFile()
    }
    
    private func getAppInformationFromFile() {
        appInformationSubscription = Bundle.main.decodable(fileName: "appInformation.json")
            .sink(receiveCompletion: Bundle.main.handleDecodeCompletion, receiveValue: { [weak self] (appInformation: AppInformation) in
                self?.appInformation = appInformation
                self?.appInformationSubscription?.cancel()
            })
    }
}

