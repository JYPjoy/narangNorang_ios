//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct CompletedPuzzleView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Image("paper7")
                .resizable()
                .scaledToFit()

        }
        .frame(width: UIScreen.main.bounds.width)
        .onTapGesture {
            coordinator.push(destination: .hallwayLockerEntrance)
        }
    }
}

struct CompletedPuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedPuzzleView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
