//
//  Narangnorang_teamView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct Narangnorang_teamView: View {

    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("team_narangnorang")
                .resizable()
                .scaledToFit()
        }
    }
}

struct Narangnorang_teamView_Previews: PreviewProvider {
    static var previews: some View {
        Narangnorang_teamView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
