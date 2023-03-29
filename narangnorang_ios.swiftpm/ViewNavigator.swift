//
//  ViewNavigator.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct NextView: View {
    let nextViewName: String
    
    @ViewBuilder var body: some View {
        switch nextViewName {
        case "IntroPageView":
            IntroPageView()
        case "TornPaperView":
            TornPaperView()
        case "Narangnorang_teamView":
            Narangnorang_teamView()
        default:
            IntroPageView()
        }
    }
}



