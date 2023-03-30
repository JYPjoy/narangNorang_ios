//
//  SwiftUIView.swift
//  
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct PrologueHand: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("Olilng_Hand 2")
                .resizable()
                .scaledToFit()
        }
    }
}

struct PrologueHand_Previews: PreviewProvider {
    static var previews: some View {
        PrologueHand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
