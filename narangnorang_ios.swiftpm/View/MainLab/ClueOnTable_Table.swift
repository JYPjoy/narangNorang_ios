//
//  ClueOnTable_Table.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct ClueOnTable_Table: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("ClueOnTable_Table")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .ontheTableView)
        }
    }
}

struct ClueOnTable_Table_Previews: PreviewProvider {
    static var previews: some View {
        ClueOnTable_Table()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
