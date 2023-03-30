//
//  ClueOnTable_Table.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct ClueOnTable_Table: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("ClueOnTable_Table")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ClueOnTable_Table_Previews: PreviewProvider {
    static var previews: some View {
        ClueOnTable_Table()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
