//
//  SceneTwentyView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneTwentyView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SceneTwentyView_Previews: PreviewProvider {
    static var previews: some View {
        SceneTwentyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
