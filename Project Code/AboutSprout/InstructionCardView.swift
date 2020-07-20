//
//  InstructionCardView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct InstructionCardView: View {
    let sprout: Sprout
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 20) {
                HStack(alignment: .center, spacing: 5){
                    Text("Step 1")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .frame(width: 220)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color("BrandPrimary")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: Color.black, radius: 8, x: 0, y: 0)
                    )
                        .padding(.top)
                }
                Text("In the evening pour about 3 tablespoons of sprouting seeds into the bottom of your quart jar. Put the sprouting screen in place and screw on the canning ring. Pour about two cups of non-chlorinated water through the sprout screen. Swirl the seeds, drain, and then cover again with 2-4 cups of water. Place jar on your counter top until the morning.")
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.bottom, 150)
            //.zIndex(0)
            .multilineTextAlignment(.center)
            .frame(width: 320, alignment: .center)
            .background(Color("BrandPrimary"))
            .cornerRadius(25)
            .shadow(color: Color.black, radius: 8, x: 0, y: 0)
            Spacer()
            //.frame(maxWidth: 300)
            //
//            Image("pngwave")
//                .resizable()
//                .frame(width: 250, height: 250, alignment: .center)
//                .clipShape(Circle())
//                .background(Circle().fill(Color.white)
//                    .background(
//                        Circle()
//                            .fill(Color("BrandPrimary"))
//                            .frame(width: 270, height: 270)
//                    )
//            )
//                .zIndex(1)
//
//                .offset(y: -50)
        }
    }
}

struct InstructionCardView_Previews: PreviewProvider {
    static let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    static var previews: some View {
        InstructionCardView(sprout: sprouts[1])
            //.previewLayout(.sizeThatFits)
    }
}
