//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct PostitView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            coordinator.navigationLinkSection()
            Image("postit")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .thirdQuizView)
        }
    }
}

struct PostitView_Previews: PreviewProvider {
    static var previews: some View {
        PostitView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
