//
//  AboutViewModel.swift
//  AboutSprout
//
//  Created by Ramadugu, Akshith on 8/2/22.
//

import SwiftUI

@MainActor class AboutViewModel: ObservableObject {
    @Published private(set) var appInformation = AppInformation(
        aboutText: "AboutSprout is an app dedicated to providing essential knowledge and resources regarding common forms of sprouts. Among periods of health crises, such as that created by COVID-19, malnutrition becomes a prevalent issue among individuals in society. AboutSprout looks to alleviate this issue by reminding users of the power and potential of sprouts, an exceptionally healthy form of nutrition proven to be easy to make. By utilizing this app's extensive information on common sprouts, in-depth instructions, and comprehensive recipe list, users will have the possibility to improve their health -- even when times are dire.",
        disclaimerText: "This content should not be used as a substitute for medical advice or treatment for any health condition or problem. Any questions regarding your own health should be directed towards your own physician or other professional healthcare provider.AboutSprout does not express or imply representations whatsoever regarding the accuracy, completeness, or usefulness of any information contained in this app. Statements made about products have not been evaluated by the US Food and Drug Administration."
    )
}

