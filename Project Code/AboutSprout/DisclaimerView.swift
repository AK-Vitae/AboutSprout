//
//  Disclaimer.swift
//  AboutSprout
//
//  Created by Akshith Ramadugu on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct DisclaimerView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            Text("Disclaimer")
                .font(.headline)
            Text("This content should not be used as a substitute for medical advice or treatment for any health condition or problem. Any questions regarding your own health should be directed towards your own physician or other professional healthcare provider.AboutSprout does not express or imply representations whatsoever regarding the accuracy, completeness, or usefulness of any information contained in this app. Statements made about products have not been evaluated by the US Food and Drug Administration.")
        }
        .foregroundColor(Color.gray)
        .padding()
        
    }
}

struct Disclaimer_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
