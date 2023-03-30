//
//  SceneFirstView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneFirstView: View {
        var body: some View {
            ZStack{
                Image("main")
                    .resizable()
                    .frame(width: 1250, height: 850)
                   
            }

    }
}

struct SceneFirstView_Previews: PreviewProvider{
    static var previews: some View {
        SceneFirstView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

