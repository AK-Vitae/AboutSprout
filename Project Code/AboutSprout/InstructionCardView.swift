//
//  InstructionCardView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct InstructionCardView: View {
    let instruction: Instruction
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 20) {
                HStack(alignment: .center, spacing: 5){
                    Text("Step \(instruction.id)")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .frame(width: 220)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 0.31, green: 0.85, blue: 0.56, opacity: 100)]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: Color.black, radius: 4, x: 0, y: 0)
                    )
                        .padding(.top)
                }
                Text(instruction.displayInstruction)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
            }
            .padding(.bottom, 150)
            .padding(.leading)
            .padding(.trailing)
            //.zIndex(0)
            .multilineTextAlignment(.leading)
                //.frame(width: 320, height: 400, alignment: .center)
                .frame(minWidth: 320, maxWidth: 320, minHeight: 400, maxHeight: 400)
            .background(Color(red: 0.31, green: 0.85, blue: 0.56, opacity: 100))
            .cornerRadius(25)
            .shadow(color: Color.black, radius: 4, x: 0, y: 0)
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
    static let instructions: [Instruction] = Bundle.main.decode("steps.json")
    static var previews: some View {
        InstructionCardView(instruction: instructions[2])
            //.previewLayout(.sizeThatFits)
    }
}
