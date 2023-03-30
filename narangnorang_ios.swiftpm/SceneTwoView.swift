//
//  SceneTwoView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneTwoView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("Olilng_Hand 2")
                .resizable()
                .scaledToFit()
        }
    }
}


struct SceneTwoView_Previews: PreviewProvider{
    static var previews: some View {
        SceneTwoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
