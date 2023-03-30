//
//  SceneTwoView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneTwoView: View {
        var body: some View {
            Image("photo1")
                .resizable()
                .frame(width: 1400, height: 1150)
                .ignoresSafeArea()

    }
}

struct SceneTwoView_Previews: PreviewProvider{
    static var previews: some View {
        SceneTwoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
