//
//  MainLabView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("MainLab_In").resizable()
                .scaledToFit()
                
        }
    }
}

struct MainLabView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabView().previewInterfaceOrientation(.landscapeLeft)
    }
}
