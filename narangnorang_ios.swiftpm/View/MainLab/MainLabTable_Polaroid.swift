//
//  MainLabTable_Polaroid.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable_Polaroid: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable_Polaroid")
                .resizable()
                .scaledToFit()
        }    }
}

struct MainLabTable_Polaroid_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable_Polaroid()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
