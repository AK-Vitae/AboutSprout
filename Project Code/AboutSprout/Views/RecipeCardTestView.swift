//
//  RecipeCardTestView.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 9/7/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct RecipeCardTestView: View {
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack{
            Image(recipe.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 270, height: 270)
                .scaledToFill()
            VStack(alignment: .center) {
                Text(recipe.title)
                    //.font(.system(.title))
                    .fontWeight(.bold)
                //.lineLimit(1)
            }
            .frame(width: 270, height: 80)
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding()
        .shadow(color: Color.black, radius: 6, x: 0, y: 6)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailView(recipe: self.recipe)
        }
        
    }
}

struct RecipeCardTestView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardTestView(recipe: recipesData[1])
            .previewLayout(.sizeThatFits)
    }
}
