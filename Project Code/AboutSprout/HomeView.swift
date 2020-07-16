//
//  HomeView.swift
//  AboutSprout
//
//  Created by AK on 7/15/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    var body: some View {
        NavigationView {
            List(sprouts) { sprout in
                NavigationLink(destination: SproutView(sprout: sprout)) {
                    Image(sprout.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                    
                    VStack(alignment: .leading) {
                        Text(sprout.displayName)
                            .font(.headline)
                    }
                }
            }
            .navigationBarTitle("Sprouts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
