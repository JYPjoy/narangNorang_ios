//
//  File.swift
//  
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

enum Destination {
    case sceneOneView
    case sceneTwoView
    case sceneThreeView
    case sceneFifteenView
    case sceneSixteenView
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .sceneOneView:
            SceneOneView()
        case .sceneTwoView:
            SceneTwoView()
        case .sceneThreeView:
            SceneThreeView()
        case .sceneFifteenView:
            SceneFifteenView()
        case .sceneSixteenView:
            SceneSixteenView()
        }
    }
}
