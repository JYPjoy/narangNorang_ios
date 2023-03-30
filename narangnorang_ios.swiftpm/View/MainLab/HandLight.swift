//
//  HandLight.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct HandLight: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        coordinator.navigationLinkSection()
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("HandLight")
                .resizable()
                .scaledToFit()
                .brightness(0.12)
        }
        .onTapGesture {
            coordinator.push(destination: .handLight_Border)
        }
    }
}

struct HandLight_Previews: PreviewProvider {
    static var previews: some View {
        HandLight()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
