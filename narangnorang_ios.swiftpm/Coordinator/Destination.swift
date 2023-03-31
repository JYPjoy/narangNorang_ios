//
//  File.swift
//  
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

enum Destination {
    case openingView
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
    case hallway
    case hallway_entrance
    case cafeteriaView
    case cafeteriaTableView
    case rippedPaperView
    case puzzleView
    case completedPuzzle
    case hallwayLockerEntrance
    case hallwayLocker
    case lockerView
    case postit
    case thirdQuizView
    case lastPassWord
    case escapedView
    case narangnorang
    
    case mainLabTableView
    case mainLabFrontDoorView
    case secondQuizView
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .openingView:
            OpeningView()
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
        //TODO: 손전등 사라짐
        case .mainLabIndoorView:
            MainLabINDoorView()
        case .hallway:
            HallWay()
        case .hallway_entrance:
            HallWay_Entrance()
        case .cafeteriaView:
            CafeteriaView()
        case .cafeteriaTableView:
            CafeteriaTableView()
        case .rippedPaperView:
            RippedPaperView()
        case .puzzleView:
            PuzzleView()
        case .completedPuzzle:
            CompletedPuzzleView()
        case .hallwayLockerEntrance:
            HallWay_Locker_Entrance()
        case .hallwayLocker:
            HallWay_Locker()
        case .lockerView:
            LockerView()
        case .postit:
            PostitView()
        case .thirdQuizView:
            ThirdQuizView()
        case .lastPassWord:
            LastPassword()
        case .escapedView:
            EscapedView()
        case .narangnorang:
            Narangnorang_teamView()
            
        case .mainLabTableView:
            MainLabTable()
        case .mainLabFrontDoorView:
            MainLabFrontDoorView()
 
        case .secondQuizView:
            SecondQuizView()
        }
    }
}
