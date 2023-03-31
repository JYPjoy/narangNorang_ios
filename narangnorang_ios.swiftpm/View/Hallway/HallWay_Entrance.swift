//
//  HallWay_Entrance.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HallWay_Entrance: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("HallWay_Entrance 1")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
        .onTapGesture {
            coordinator.push(destination: .cafeteriaView)
        }
    }
}

struct HallWay_Entrance_Previews: PreviewProvider {
    static var previews: some View {
        HallWay_Entrance()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
