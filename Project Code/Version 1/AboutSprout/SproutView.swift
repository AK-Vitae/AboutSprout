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
        ScrollView{
            GeometryReader { geometry in
                VStack (alignment: .center, spacing: 30){
                    HStack{
                        Image(self.sprout.image)
                            .renderingMode(.original)
                            .resizable()
                            //.frame(maxWidth: geometry.size.width*0.25, maxHeight: geometry.size.height)
                            .frame(maxWidth: 100, maxHeight: 100)
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .shadow(color: Color.black, radius: 4, x: 0, y: 0)
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
                        .fixedSize(horizontal: false, vertical: true)
                    }
                    .background(Color("sproutGreen"))
                    .cornerRadius(8)
                    .shadow(color: .gray,radius: 4, x: 0, y: 0)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    Text(self.sprout.description)
                        .bold()
                        
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("sproutGreen"), lineWidth: 5)
                                .shadow(color: .gray,radius: 4, x: 0, y: 0)
                    )
                        .cornerRadius(8)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    
                }
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
