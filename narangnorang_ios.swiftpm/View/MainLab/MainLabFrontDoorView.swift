//
//  MainLabFrontDoorView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabFrontDoorView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            Image("MainLabFocusDoor").resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabView)
        }
    }
}

struct MainLabFrontDoorView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabFrontDoorView().previewInterfaceOrientation(.landscapeLeft)
    }
}
