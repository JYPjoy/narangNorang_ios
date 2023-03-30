//
//  File.swift
//  
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

enum Destination {
    case sceneOneView
    case cafeteriaView
    case secondQuizView
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .sceneOneView:
            SceneOneView()
        case .cafeteriaView:
            CafeteriaView()
        case .secondQuizView:
            SecondQuizView()
        }
    }
}
