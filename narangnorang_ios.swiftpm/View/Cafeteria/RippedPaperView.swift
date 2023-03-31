//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct RippedPaperView: View {
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Image("paper0")
                .resizable()
                .scaledToFit()
        }
        .background(
            Rectangle()
                .fill(.black)
                .scaledToFill()
        )
        .onTapGesture {
            
        }
    }
}

struct RippedPaperView_Previews: PreviewProvider {
    static var previews: some View {
        RippedPaperView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
