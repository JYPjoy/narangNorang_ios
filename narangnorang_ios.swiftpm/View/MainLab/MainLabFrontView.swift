//
//  MainLabFrontView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabFrontView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            Image("MainLab")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabFrontDoorView)
        }
    }
}

struct MainLabFrontView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabFrontView().previewInterfaceOrientation(.landscapeLeft)
    }
}
