//
//  ViewExtensions.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

extension View {
    
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
    func tabBarOpaque() -> some View {
        self.modifier(TabBarModifier())
    }

//    func eraseToAnyView() -> AnyView {
//            AnyView(self)
//    }


}

