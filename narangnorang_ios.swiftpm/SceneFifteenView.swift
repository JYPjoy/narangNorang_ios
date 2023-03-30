//
//  SceneFifteenView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI

struct SceneFifteenView: View {
    @StateObject var coordinator = Coordinator()
    @State var scaleInOut: Bool = false
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Image("cafeteria")
                .resizable()
        }
        .ignoresSafeArea()
    }
}

struct SceneFifteenView_Previews: PreviewProvider {
    static var previews: some View {
        SceneFifteenView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
