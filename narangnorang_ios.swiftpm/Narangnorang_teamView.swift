//
//  Narangnorang_teamView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct Narangnorang_teamView: View {
    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero
    @State private var blendMode: Bool = true
    @State private var scaleInOut = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("team_narangnorang")
                    .resizable()
                ZStack {
                    Rectangle()
                    
                    ZStack{
                        Circle()
                            .frame(width: 300, height: 300)
                            .offset(x: self.currentPosition.width+200, y: self.currentPosition.height-150)
                        
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                                    }
                                    .onEnded { value in
                                        self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                                        self.newPosition = self.currentPosition
                                    }
                            )
                            .onTapGesture {
                                self.scaleInOut = true
                            }
                            .blendMode(.destinationOut)
                    }
                    .scaleEffect(scaleInOut ? 15: 1)
                    .animation(Animation.easeInOut.speed(1/8),value: scaleInOut)
                }
                .compositingGroup()
            }
            .ignoresSafeArea(.all, edges: [.bottom,.top])
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct Narangnorang_teamView_Previews: PreviewProvider {
    static var previews: some View {
        Narangnorang_teamView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
