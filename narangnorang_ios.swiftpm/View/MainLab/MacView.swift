//
//  MacView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MacView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            
            Image("Mac_background").resizable()
                .scaledToFit()
            
            Rectangle().foregroundColor(.yellow).frame(width: 400, height: 400)
            
            VStack{
                Text("멀티탭 보관함을").font(.custom("BlackHanSans-Black", size: 55))
                Text("열어보시오").font(.custom("BlackHanSans-Black", size: 55))
            }
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabTable_Box)
        }
    }
}

struct MacView_Previews: PreviewProvider {
    static var previews: some View {
        MacView().previewInterfaceOrientation(.landscapeLeft)
    }
}
