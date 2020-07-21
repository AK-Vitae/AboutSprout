//
//  RecipeView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct RecipeView: View {
    let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                ForEach(sprouts) { sprout in
                    VStack {
                        Button(action: {
                            UIApplication.shared.open(URL(string: sprout.recipe)!)
                            }) {
                            RecipeCardView(sprout: sprout)
                                .padding()
                        }
                    }
                }
                .padding(.top, 25)
            }
            .background(Color.white)
            .navigationBarColor(UIColor(red: 0.31, green: 0.85, blue: 0.56, alpha: 100))
            .navigationBarTitle(Text("Recipes"))
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
