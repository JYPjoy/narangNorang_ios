//
//  FocusMacView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct FocusMacView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("FocusMac")
                .resizable()
                .scaledToFit()
        }
    }
}

struct FocusMacView_Previews: PreviewProvider {
    static var previews: some View {
        FocusMacView().previewInterfaceOrientation(.landscapeLeft)
    }
}
