//
//  BView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneTwoView: View {
  @StateObject var coordinator = Coordinator()

  var body: some View {
    VStack {
      coordinator.navigationLinkSection()
      Text("두 번째 씬입니다.")
    }
  }
}
