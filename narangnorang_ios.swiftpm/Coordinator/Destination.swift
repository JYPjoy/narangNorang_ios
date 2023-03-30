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
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .sceneOneView:
            SceneOneView()
        case .sceneTwoView:
            SceneTwoView()
        case .sceneThreeView:
            SceneThreeView()
        }
    }
}
