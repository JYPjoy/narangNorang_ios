//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct SecondQuizView: View {
    @StateObject var coordinator = Coordinator()

    var body: some View {
      ZStack {
        coordinator.navigationLinkSection()
        Image("rippedpapers")
              .resizable()
      }
      .ignoresSafeArea()
    }
}

struct SecondQuizView_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuizView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
