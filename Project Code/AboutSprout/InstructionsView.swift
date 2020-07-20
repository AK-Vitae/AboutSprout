//
//  InstructionsView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct InstructionsView: View {
    let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 30){
                        ForEach(self.sprouts) { sprout in
                                InstructionCardView(sprout: sprout)
                                    .padding(.top, 25)
                                    .padding(.leading, 10)
                        }
                    }
                }
                .background(Color.white)
                .navigationBarColor(UIColor(named:"BrandPrimary"))
                .navigationBarTitle(Text("How to Grow"), displayMode: .large)
            }
            
        }
        
    }
//    let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
//    var body: some View {
//        NavigationView{
//            ScrollView(.horizontal, showsIndicators: false){
//                VStack{
//                    Spacer()
//                    HStack(alignment: .center, spacing: 75) {
//                        ForEach(sprouts) { sprout in
//                            InstructionCardView(sprout: sprout)
//                        }
//                    }
//                    .padding(.vertical)
//                   .padding(.horizontal, 35)
//                    Spacer()
//                }
//            }
//            .background(Color.white)
//            .navigationBarColor(UIColor(named:"BrandPrimary"))
//            .navigationBarTitle(Text("How to Grow"), displayMode: .large)
//        }
//    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
