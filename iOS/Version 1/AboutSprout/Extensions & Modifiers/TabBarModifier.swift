//
//  TabBarModifier.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct TabBarModifier: ViewModifier {
    init() {
        let opaqueAppearance = UITabBarAppearance()
        opaqueAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = opaqueAppearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}
