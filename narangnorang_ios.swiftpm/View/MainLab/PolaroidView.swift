//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct PolaroidView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            
            Image("polaroid").resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabMac)
        }
    }
}

struct PolaroidView_Previews: PreviewProvider {
    static var previews: some View {
        PolaroidView().previewInterfaceOrientation(.landscapeLeft)
    }
}
