//
//  SceneThreeView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneThreeView: View {
        var body: some View {
            ZStack{
                Image("LEEO(01)")
                    .resizable()
                    
                    .ignoresSafeArea()
            }

    }
}

struct SceneThreeView_Previews: PreviewProvider{
    static var previews: some View {
        SceneThreeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
//  CView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI
struct SceneThreeView: View {
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        VStack {
            coordinator.navigationLinkSection()
            Text("세 번째 씬입니다.")
            Button {
                coordinator.push(destination: .sceneOneView)
            } label: {
                Image(systemName: "a.square.fill")
            }
            Button {
                coordinator.push(destination: .sceneTwoView)
            } label: {
                Image(systemName: "b.square.fill")
            }
            Button {
                coordinator.popToRoot()
            } label: {
                Text("홈으로 가기")
            }
        }
    }
}

