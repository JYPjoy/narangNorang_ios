//
//  SceneOneView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneOneView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SceneOneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneOneView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
