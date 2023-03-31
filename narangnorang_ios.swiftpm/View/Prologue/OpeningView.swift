//
//  SceneFirstView.swift
//  narangnorang_ios
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct OpeningView: View {
    @StateObject var coordinator = Coordinator()
        var body: some View {
            ZStack{
                coordinator.navigationLinkSection()
                Rectangle()
                    .ignoresSafeArea()
                Image("Opening")
                    .resizable()
                    .scaledToFit()
 
            }
            .onTapGesture {
                coordinator.push(destination: .prologueHand)
            }
    }
}

struct OpeningView_Previews: PreviewProvider{
    static var previews: some View {
        OpeningView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

