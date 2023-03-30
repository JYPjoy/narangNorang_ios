//
//  MainLabTable_Box.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable_Box: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable_Box")
                .resizable()
                .scaledToFit()
        }
    }
}

struct MainLabTable_Box_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable_Box()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
