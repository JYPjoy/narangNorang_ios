//
//  MainLabTable_MacBook.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable_MacBook: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable_MacBook")
                .resizable()
                .scaledToFit()
        }
    }
}

struct MainLabTable_MacBook_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable_MacBook()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
