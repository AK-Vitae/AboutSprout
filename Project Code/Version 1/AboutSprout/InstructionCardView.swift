//
//  InstructionCardView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct InstructionCardView: View {
    @State private var slideInAnimation: Bool = false
    let instruction: Instruction
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                    .frame(height: 20)
                HStack {
                    Text("Step \(instruction.id)")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .fixedSize()
                        .padding(.vertical, 12)
                        .frame(width: 230)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("sproutGreen")]), startPoint: .top, endPoint: .bottom))
                                .shadow(radius: 4, x: 0, y: 0)
                    )
                }
                
                Text(instruction.instruction)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .frame(width: 300, height: 120)
                
//                Image("pngwave")
//                    .resizable()
//                    .frame(width: 150, height: 150, alignment: .center)
//                    .clipShape(RoundedRectangle(cornerRadius: 25))
//                    .overlay(RoundedRectangle(cornerRadius: 25)
//                        .stroke(Color("sproutGreen"), lineWidth: 4))
//                    .padding(.horizontal)
                
                Text("Tip: \(instruction.tip)")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 300, height: 75)
                Spacer()
            }
            .multilineTextAlignment(.center)
            .frame(width: 320, height: 350, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color("sproutGreen"), lineWidth: 5)
                    .shadow(radius: 4)
            )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct InstructionCardView_Previews: PreviewProvider {
    static let instructions: [Instruction] = Bundle.main.decode("steps.json")
    static var previews: some View {
        InstructionCardView(instruction: instructions[2])
        //.previewLayout(.sizeThatFits)
    }
}
