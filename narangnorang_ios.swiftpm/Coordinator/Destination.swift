//
//  File.swift
//  
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

enum Destination {
    case prologueHand
    case missionOneView
    case missionTwoView
    case missionThreeView
    case mainLabFrontView
    case mainLabFrontDoorView
    case sceneFirstView
    case sceneOneView
    case cafeteriaView
    case secondQuizView
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .prologueHand:
            PrologueHand()
        case .missionOneView:
            MissionOneView()
        case .missionTwoView:
            MissionTwoView()
        case .missionThreeView:
            MissionThreeView()
        case .mainLabFrontView:
            MainLabFrontView()
        case .mainLabFrontDoorView:
            MainLabFrontDoorView()
        case .sceneFirstView:
            SceneFirstView()
        case .sceneOneView:
            SceneOneView()
        case .cafeteriaView:
            CafeteriaView()
        case .secondQuizView:
            SecondQuizView()
        }
    }
}
