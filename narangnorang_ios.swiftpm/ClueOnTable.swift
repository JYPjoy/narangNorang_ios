//
//  ClueOnTable.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct ClueOnTable: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("ClueOnTable")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ClueOnTable_Previews: PreviewProvider {
    static var previews: some View {
        ClueOnTable()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
