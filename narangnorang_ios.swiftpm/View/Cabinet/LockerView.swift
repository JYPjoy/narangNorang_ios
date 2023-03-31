//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct LockerView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("cabinet")
                .resizable()
                .scaledToFit()
                .brightness(0.05)
        }
        .onTapGesture {
            coordinator.push(destination: .postit)
        }
    }
}

struct LockerView_Previews: PreviewProvider {
    static var previews: some View {
        LockerView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
