//
//  PolaroidView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct PolaroidView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("polaroid").resizable()
                .scaledToFit()
        }
    }
}

struct PolaroidView_Previews: PreviewProvider {
    static var previews: some View {
        PolaroidView().previewInterfaceOrientation(.landscapeLeft)
    }
}
