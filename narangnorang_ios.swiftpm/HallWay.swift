//
//  HallWay.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HallWay: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("HallWay")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
    }
}

struct HallWay_Previews: PreviewProvider {
    static var previews: some View {
        HallWay()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
