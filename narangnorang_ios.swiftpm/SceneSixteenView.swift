//
//  SceneSixteenView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneSixteenView: View {
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

struct SceneSixteenView_Previews: PreviewProvider {
    static var previews: some View {
        SceneSixteenView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
