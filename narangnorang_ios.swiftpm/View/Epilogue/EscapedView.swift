//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct EscapedView: View {
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Image("escaped")
                .resizable()
                .scaledToFit()
        }
        .background(
            Rectangle()
                .fill(.black)
                .scaledToFill()
        )
        .onTapGesture {
            coordinator.push(destination: .narangnorang)
        }
    }
}

struct EscapedView_Previews: PreviewProvider {
    static var previews: some View {
        EscapedView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
