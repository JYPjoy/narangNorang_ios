//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct MissionThreeView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("lock")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabFrontView)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MissionThreeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
