//
//  SceneFiveView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct SceneFiveView: View {
        var body: some View {
            ZStack{
                Image("lock")
                    .resizable()
                    .frame(width: 1250, height: 850)
                   // .scaleEffect(1.1)
                   //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    //.ignoresSafeArea()
            }

    }
}

struct SceneFiveView_Previews: PreviewProvider{
    static var previews: some View {
        SceneFiveView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

