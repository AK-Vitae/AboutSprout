//
//  AppInformationViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI
import Combine

@MainActor class AppInformationViewModel: ObservableObject {
    @Published private(set) var appInformation: AppInformation?
    
    private let appInformationDataService = AppInformationDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        appInformationDataService.$appInformation
            .sink { [weak self] appInformationFromFile in
                self?.appInformation = appInformationFromFile
            }
            .store(in: &cancellables)
    }
}

