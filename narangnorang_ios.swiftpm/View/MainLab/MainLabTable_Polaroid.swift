//
//  MainLabTable_Polaroid.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable_Polaroid: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable_Polaroid")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .polaroid)
        }
        
    }
}

struct MainLabTable_Polaroid_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable_Polaroid()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
