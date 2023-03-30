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
            Image("MainLab_In").resizable()
                .scaleEffect(1.01)
                .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                
        }
    }
}

struct MainLabView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabView().previewInterfaceOrientation(.landscapeLeft)
    }
}
