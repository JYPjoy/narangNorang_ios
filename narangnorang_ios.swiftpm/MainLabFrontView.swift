//
//  MainLabFrontView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabFrontView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("MainLabFront").resizable()
                .scaledToFit()
                

        }
    }
}

struct MainLabFrontView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabFrontView().previewInterfaceOrientation(.landscapeLeft)
    }
}
