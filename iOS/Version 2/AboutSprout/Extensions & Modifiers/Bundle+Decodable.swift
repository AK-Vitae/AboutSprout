//
//  Bundle+Decodable.swift
//  AboutSprout
//
//  Created by AK on 7/15/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import Foundation
import Combine

extension Bundle {
    func decode <T: Codable> (_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
    
    func readFile(file: String) -> AnyPublisher<Data, Error> {
        self.url(forResource: file, withExtension: nil)
            .publisher
            .tryMap{ string in
                guard let data = try? Data(contentsOf: string) else {
                    fatalError("Failed to load \(file) from bundle.")
                }
                return data
            }
            .mapError { error in
                return error
            }.eraseToAnyPublisher()
    }
    
    func decodable<T: Decodable>(fileName: String) -> AnyPublisher<T, Error> {
        readFile(file: fileName)
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error in
                return error
            }
            .eraseToAnyPublisher()
        
    }
    
    func handleDecodeCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
