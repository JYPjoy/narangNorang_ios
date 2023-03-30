//
//  MainLabTable_MacBook.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable_MacBook: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable_MacBook")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .secureFieldView)
        }
    }
}

struct MainLabTable_MacBook_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable_MacBook()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
