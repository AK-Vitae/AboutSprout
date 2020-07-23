//
//  CardTest.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 7/22/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct CardTest: View {
    var body: some View {
        
        ZStack{
            GeometryReader { geo in
                VStack{
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .frame(width: geo.size.width * 0.60)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color("sproutGreen")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: Color.black, radius: 2, x: 0, y: 0)
                    )
                        .padding()
                    Image("pngwave")
                        .resizable()
                        .scaledToFit()
                    Text("Hello, World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .padding()
                .frame(width: geo.size.width * 0.90)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("sproutGreen"), lineWidth: 5))
                
            }
        }
        
    }
}

struct CardTest_Previews: PreviewProvider {
    static var previews: some View {
        CardTest()
        .previewLayout(.sizeThatFits)
    }
}
