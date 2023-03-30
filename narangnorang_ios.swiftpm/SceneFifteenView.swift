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
            
            Image("table")
                .resizable()
                .frame(width: 1200, height:1000)
                .position(x: 1020, y: 660)
                .onTapGesture {
                    scaleInOut.toggle()
                }
                .scaleEffect(scaleInOut ? 1.1: 1)
                .animation(Animation.easeInOut.speed(1/4),value: scaleInOut)
            
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
