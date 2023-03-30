//
//  HallWay_Entrance.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HallWay_Entrance: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("HallWay_Entrance")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
    }
}

struct HallWay_Entrance_Previews: PreviewProvider {
    static var previews: some View {
        HallWay_Entrance()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
