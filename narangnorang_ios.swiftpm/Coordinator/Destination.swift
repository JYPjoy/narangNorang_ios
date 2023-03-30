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
    case mainLabView
    case clueOnTable
    case ontheTableView
    case mainLabTablePolaroid
    case polaroid
    case mainLabMac
    case secureFieldView
    case macView
    case mainLabTable_Box
    case handLight
    case handLight_Border
    //TODO: 손전등 사라짐
    case mainLabIndoorView
    
    case mainLabTableView
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
        case .mainLabView:
            MainLabView()
        case .clueOnTable:
            ClueOnTable_Table()
        case .ontheTableView:
            OntheTableView()
        case .mainLabTablePolaroid:
            MainLabTable_Polaroid()
        case .polaroid:
            PolaroidView()
        case .mainLabMac:
            MainLabTable_MacBook()
        case .secureFieldView:
            SecurefieldView()
        case .macView:
            MacView()
        case .mainLabTable_Box:
            MainLabTable_Box()
        case .handLight:
            HandLight()
        case .handLight_Border:
            HandLight_Border()
        //###
        case .mainLabIndoorView:
            MainLabINDoorView()
            
        case .mainLabTableView:
            MainLabTable()
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
