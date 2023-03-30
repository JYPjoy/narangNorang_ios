//
//  FocusPhotoView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct FocusPhotoView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("FocusPicture").resizable()
                .scaledToFit()
        }
    }
}

struct FocusPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        FocusPhotoView().previewInterfaceOrientation(.landscapeLeft)
    }
}
