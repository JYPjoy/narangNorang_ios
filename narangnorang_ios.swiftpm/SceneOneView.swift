//
//  AView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneOneView: View {
    @StateObject var coordinator = Coordinator(isRoot: true)
    
    var body: some View {
        NavigationView {
            VStack {
                coordinator.navigationLinkSection()
                Text("첫 번째 씬입니다.")
                Button {
                    coordinator.push(destination: .sceneTwoView)
                } label: {
                    Image(systemName: "b.square.fill")
                }
                Button {
                    coordinator.push(destination: .sceneThreeView)
                } label: {
                    Image(systemName: "c.square.fill")
                }
            }
        }
    }
}
