//
//  SproutView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct SproutView: View {
    let sprout: Sprout
    var body: some View {
        GeometryReader { geometry in
            VStack (alignment: .center, spacing: 30){
                HStack{
                    Image(self.sprout.image)
                        .renderingMode(.original)
                        .resizable()
                        .frame(maxWidth: geometry.size.width*0.25, maxHeight: geometry.size.height*0.15)
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .shadow(color: Color.black, radius: 8, x: 0, y: 6)
                        .padding(.leading)
                        .padding(.top)
                        .padding(.bottom)
                    VStack{
                        Text(self.sprout.displayName)
                            .fontWeight(.bold)
                            .font(.headline)
                        Text("\(self.sprout.nomenclature)")
                            
                            .font(.subheadline)
                            .italic()
                            .fixedSize()
                    }
                    .padding()
                }
                .background(Color("BrandPrimary"))
                .cornerRadius(8)
                .shadow(color: .gray,radius: 1, x: 0, y: 6)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                
                Text(self.sprout.description)
                    .bold()
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                    .background(Color("BrandPrimary"))
                    .cornerRadius(8)
                    .shadow(color: .gray,radius: 1, x: 0, y: 6)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
            }
        }
    }
}

struct SproutView_Previews: PreviewProvider {
    static let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    static var previews: some View {
        SproutView(sprout: sprouts[1])
        //.previewLayout(.sizeThatFits)
    }
}
