//
//  SceneTwoView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneTwoView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SceneTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SceneTwoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
