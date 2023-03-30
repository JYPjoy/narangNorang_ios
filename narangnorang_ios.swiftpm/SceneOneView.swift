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
        VStack {
            coordinator.navigationLinkSection()
            Text("첫 번째 씬입니다.")

            Button {
                coordinator.push(destination: .sceneFifteenView)
            } label: {
               // Image(systemName: "b.square.fill")
                Text("15번째 씬으로 이동합니다.")
            }
            Button {
                coordinator.push(destination: .sceneThreeView)
            } label: {
                Image(systemName: "c.square.fill")
            }
        }
        
    }
}
