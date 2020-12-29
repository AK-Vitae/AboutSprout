//
//  RecipeCardView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI
struct RecipeCardView: View {
    let sprout: Sprout
    var body: some View {
        VStack{
            Image(sprout.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 270, height: 270)
                .scaledToFill()
            VStack(alignment: .center) {
                Text(sprout.displayName)
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                Text(sprout.nomenclature)
                    .foregroundColor(Color.gray)
                    .italic()
                
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black, radius: 6, x: 0, y: 6)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    static var previews: some View {
        RecipeCardView(sprout: sprouts[0])
            .previewLayout(.sizeThatFits)
    }
}
