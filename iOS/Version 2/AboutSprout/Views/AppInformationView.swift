//
//  AboutView.swift
//  AboutSprout
//
//  Created by AK on 7/18/20.
//  Copyright © 2020 Dugu Tech. All rights reserved.
//

import SwiftUI

struct AppInformationView: View {
    @StateObject var aboutViewModel = AppInformationViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 200, height: 100)
                    .scaledToFit()
                    .padding(.top)
                Section(footer: Disclaimer())  {
                    Text(aboutViewModel.appInformation?.aboutText ?? "")
                        .bold()
                        .padding([.leading, .trailing,.bottom])
                        .fixedSize(horizontal: false, vertical: true)
                    Divider()
                }
                .font(.system(size: 14))
            }
        }
    }
}

struct Disclaimer: View {
    @StateObject var aboutViewModel = AppInformationViewModel()
    
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            Text("Disclaimer")
                .font(.headline)
                .padding([.leading, .trailing])
            Text(aboutViewModel.appInformation?.disclaimerText ?? "")
                .padding([.leading, .trailing,.bottom])
        }
        .fixedSize(horizontal: false, vertical: true)
        .foregroundColor(Color.gray)
        
        
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AppInformationView()
    }
}
