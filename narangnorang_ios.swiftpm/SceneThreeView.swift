//
//  SceneThreeView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneThreeView: View {
        var body: some View {
            ZStack{
                Image("leeo3")
                    .resizable()
                    .frame(width: 1400, height: 1150)
                    .ignoresSafeArea()
            }

    }
}

struct SceneThreeView_Previews: PreviewProvider{
    static var previews: some View {
        SceneThreeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
