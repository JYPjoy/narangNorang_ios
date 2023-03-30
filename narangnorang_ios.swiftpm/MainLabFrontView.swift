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
            Image("MainLabFront").resizable()
                .scaleEffect(1.1)
                .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                

        }
    }
}

struct MainLabFrontView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabFrontView().previewInterfaceOrientation(.landscapeLeft)
    }
}
