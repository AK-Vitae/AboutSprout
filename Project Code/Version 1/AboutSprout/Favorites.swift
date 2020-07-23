//
//  Favorites.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject{
    private var sprouts: Set<String>
    
    private let saveKey = "Favorites"
    
    init(){
        // Load our saved data
        self.sprouts = []
    }
    
    func contains(_ sprout:Sprout) -> Bool{
        sprouts.contains(sprout.id)
    }
    
    func add(_ sprout: Sprout) {
        objectWillChange.send()
        sprouts.insert(sprout.id)
        save()
    }
    
    func remove (_ sprout: Sprout) {
        objectWillChange.send()
        sprouts.remove(sprout.id)
        save()
    }
    
    func save() {
        
    }
}
