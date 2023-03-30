//
//  HandLight.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HandLight: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("HandLight")
                .resizable()
                .scaledToFit()
                .brightness(0.12)
        }
    }
}

struct HandLight_Previews: PreviewProvider {
    static var previews: some View {
        HandLight()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
