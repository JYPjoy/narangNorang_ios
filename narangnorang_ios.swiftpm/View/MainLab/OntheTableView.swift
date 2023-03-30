//
//  OntheTableView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct OntheTableView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            
            Image("Onthetable").resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabTablePolaroid)
        }
    }
}

struct OntheTableView_Previews: PreviewProvider {
    static var previews: some View {
        OntheTableView().previewInterfaceOrientation(.landscapeLeft)
    }
}
