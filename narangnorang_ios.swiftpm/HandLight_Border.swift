//
//  HandLight_Border.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HandLight_Border: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("HandLight_Border")
                .resizable()
                .scaledToFit()
                .brightness(0.12)
        }
    }
}

struct HandLight_Border_Previews: PreviewProvider {
    static var previews: some View {
        HandLight_Border()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
