//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct HallWay_Locker_Entrance: View {
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
            coordinator.push(destination: .hallwayLocker)
        }
    }
}

struct HallWay_Locker_Entrance_Previews: PreviewProvider {
    static var previews: some View {
        HallWay_Locker_Entrance()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
