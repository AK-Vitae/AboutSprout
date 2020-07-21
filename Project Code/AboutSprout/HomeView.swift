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
        GeometryReader { geo in
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    Spacer()
                    VStack(alignment: .leading, spacing: 10){
                        ForEach(self.sprouts) { sprout in
                            NavigationLink(destination: SproutView(sprout: sprout)) {
                                SproutRow(sprout: sprout)
                            }
                        }
                    }
                }
                .background(Color.white)
                .navigationBarColor(UIColor(named:"BrandPrimary"))
                .navigationBarTitle(Text("Sprouts"), displayMode: .large)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
