//
//  SproutView.swift
//  AboutSprout
//
//  Created by AK on 7/15/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct SproutView: View {
    let sprout: Sprout
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    
                    Image(self.sprout.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width*0.40)
                        .padding(.top)
                    
                    Text("Scientific Name: \(self.sprout.nomenclature)")
                        .padding()
                    
                    Text(self.sprout.description)
                        .padding()
                    
                    Spacer(minLength: 25)
                }
            }
        }
        .navigationBarTitle(Text(sprout.displayName), displayMode: .inline)
    }
}

struct SproutView_Previews: PreviewProvider {
    static let sprouts: [Sprout] = Bundle.main.decode("tempSprouts.json")
    static var previews: some View {
        SproutView(sprout: sprouts[0])
    }
}
