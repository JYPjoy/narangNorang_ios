//
//  HallWay.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HallWay: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("HallWay")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
        .onTapGesture {
            coordinator.push(destination: .hallway_entrance)
        }
    }
}

struct HallWay_Previews: PreviewProvider {
    static var previews: some View {
        HallWay()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
