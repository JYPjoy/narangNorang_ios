//
//  ClueOnTable_Door.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct ClueOnTable_Door: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("ClueOnTable_Door")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ClueOnTable_Door_Previews: PreviewProvider {
    static var previews: some View {
        ClueOnTable_Door()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
