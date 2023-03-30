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
                Rectangle()
                    .ignoresSafeArea()
                Image("lock")
                    .resizable()
                    .scaledToFit()
                   
                 
            }

    }
}

struct SceneFiveView_Previews: PreviewProvider{
    static var previews: some View {
        SceneFiveView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

