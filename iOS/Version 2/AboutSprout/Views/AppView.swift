//
//  AppView.swift
//  AboutSprout
//
//  Created by AK on 7/15/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView() {
            HomeView2()
                .tabItem{
                    Image(systemName: "house")
                        .font(.system(size: 30))
                    Text("Home")
            }
            InstructionsView()
                .tabItem{
                    Image(systemName: "list.number")
                        .font(.system(size: 30))
                    Text("How to Grow")
            }
            RecipeTestView()
                .tabItem{
                    Image(systemName: "book")
                        .font(.system(size: 30))
                    Text("Recipes")
            }
            AppInformationView()
                .tabItem{
                    Image(systemName: "info.circle")
                        .font(.system(size: 30))
                    Text("About")
            }
        }
        .tabBarOpaque()
        .accentColor(Color("sproutGreen"))
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
