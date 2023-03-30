//
//  MacView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MacView: View {
    var body: some View {
        ZStack{
            Image("Mac_background").resizable()
                .scaleEffect(1.01)
                .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            
            Rectangle().foregroundColor(.yellow).frame(width: 400, height: 400)
            
            VStack{
                Text("멀티탭 보관함을").font(.custom("BlackHanSans-Black", size: 55))
                Text("열어보시오").font(.custom("BlackHanSans-Black", size: 55))
            }
        }
    }
}

struct MacView_Previews: PreviewProvider {
    static var previews: some View {
        MacView().previewInterfaceOrientation(.landscapeLeft)
    }
}
