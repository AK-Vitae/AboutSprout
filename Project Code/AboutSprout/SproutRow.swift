//
//  SproutRow.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct SproutRow: View {
    let sprout: Sprout
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                // MARK: - Image for Row
                Image(sprout.image)
                    .renderingMode(.original)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                    .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(Color("BrandPrimary"), lineWidth: 1))
                    .padding()
                
                // MARK: - Sprout Name and Scientific Name
                VStack(alignment: .leading) {
                    Text(sprout.displayName)
                        .font(.headline)
                        .foregroundColor(Color.black)
                    Text(sprout.nomenclature)
                        .foregroundColor(Color.gray)
                        .italic()
                }
                .padding()
                Spacer()
                
                // MARK: - Chevron symbol
                Image(systemName: "chevron.right")
                    .foregroundColor(Color("BrandPrimary"))
                    .padding(.trailing)
            }
            // MARK: - Background, Shadow, and Formatting
            .background(Color.white)
            .border(Color("BrandPrimary"), width: 4)
            .cornerRadius(8)
            .shadow(color: .gray,radius: 1, x: 0, y: 6)
            .padding(.leading, 10)
            .padding(.trailing, 10)
        }
        
    }
    // MARK: - Drawing Constants
    let cornerRadius: CGFloat = 25.0
}

struct SproutRow_Previews: PreviewProvider {
    static let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    static var previews: some View {
        SproutRow(sprout: sprouts[0])
            .previewLayout(.sizeThatFits)
    }
}
