//
//  RecipeTestView.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 9/7/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct RecipeTestView: View {
    var recipes: [Recipe] = recipesData
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                ForEach(recipes) { item in
                    RecipeCardTestView(recipe: item)
                }
                .padding(.top, 25)
            }
            .background(Color.white)
            .navigationBarColor(UIColor(red: 0.31, green: 0.85, blue: 0.56, alpha: 100))
            .navigationBarTitle(Text("Recipes"))
        }
    }
}

struct RecipeTestView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTestView()
    }
}

