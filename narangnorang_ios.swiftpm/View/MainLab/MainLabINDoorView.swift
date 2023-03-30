//
//  MainLabINDoorView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabINDoorView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            Image("MainLabInDoor").resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabTableView)
        }
    }
}

struct MainLabINDoorView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabINDoorView().previewInterfaceOrientation(.landscapeLeft)
    }
}
