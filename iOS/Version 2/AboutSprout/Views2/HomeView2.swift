//
//  HomeView2.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

struct HomeView2: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        List {
            ForEach(homeViewModel.sprouts) { sprout in
                Text("\(sprout.name) - \(sprout.nomenclature)")
            }
        }
    }
}

struct HomeView2_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2()
    }
}
