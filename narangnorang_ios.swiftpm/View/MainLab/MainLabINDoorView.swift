//
//  MainLabINDoorView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabINDoorView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("MainLabInDoor").resizable()
                .scaledToFit()
        }
    }
}

struct MainLabINDoorView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabINDoorView().previewInterfaceOrientation(.landscapeLeft)
    }
}
