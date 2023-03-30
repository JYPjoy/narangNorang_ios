//
//  OntheTableView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct OntheTableView: View {
    var body: some View {
        ZStack{
            Image("Onthetable").resizable()
                .scaleEffect(1.01)
                .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }
    }
}

struct OntheTableView_Previews: PreviewProvider {
    static var previews: some View {
        OntheTableView().previewInterfaceOrientation(.landscapeLeft)
    }
}
