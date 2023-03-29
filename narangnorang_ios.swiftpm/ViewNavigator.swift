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
        case "SceneOneView":
            SceneOneView()
        case "SceneTwoView":
            SceneTwoView()
        case "SceneThreeView":
            SceneThreeView()
        case "SceneFourView":
            SceneFourView()
        case "SceneFiveView":
            SceneFiveView()
        case "SceneSixView":
            SceneSixView()
        case "SceneSevenView":
            SceneSevenView()
        case "SceneEightView":
            SceneEightView()
        case "SceneNineView":
            SceneNineView()
        case "SceneTenView":
            SceneTenView()
        case "SceneElevenView":
            SceneElevenView()
        case "SceneTwelveView":
            SceneTwelveView()
        case "SceneThirteenView":
            SceneThirteenView()
        case "SceneFourteenView":
            SceneFourteenView()
        case "SceneFifteenView":
            SceneFifteenView()
        case "SceneSixteenView":
            SceneSixteenView()
        case "SceneSeventeenView":
            SceneSeventeenView()
        case "SceneEighteenView":
            SceneEighteenView()
        case "SceneNineteenView":
            SceneNineteenView()
        case "SceneTwentyVView":
            SceneTwentyView()
        case "SceneTwentyOneView":
            SceneTwentyOneView()
        case "SceneTwentyTwoView":
            SceneTwentyTwoView()
        case "SceneTwentyThreeView":
            SceneTwentyThreeView()
        default:
            IntroPageView()
        }
    }
}



