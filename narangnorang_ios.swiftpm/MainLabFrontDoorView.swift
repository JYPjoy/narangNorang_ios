//
//  MainLabFrontDoorView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabFrontDoorView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("MainLabFocusDoor").resizable()
                .scaledToFit()
        }
    }
}

struct MainLabFrontDoorView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabFrontDoorView().previewInterfaceOrientation(.landscapeLeft)
    }
}
