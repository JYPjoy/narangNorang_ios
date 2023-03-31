//
//  HallWay_Locker.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HallWay_Locker: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("HallWay_Locker")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
        .onTapGesture {
            coordinator.push(destination: .lockerView)
        }
    }
}

struct HallWay_Locker_Previews: PreviewProvider {
    static var previews: some View {
        HallWay_Locker()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
