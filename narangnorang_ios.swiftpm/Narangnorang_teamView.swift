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
    
    var body: some View {
        ZStack{
            Image("team_narangnorang")
                .resizable()
            ZStack {
                //TODO: '나랑노랑' 버튼 클릭 - 이벤트로 도형 움직이게 처리
                Rectangle()
                Circle()
                    .frame(width:300, height: 300)
                    .foregroundColor(.yellow)
                    .offset(x: self.currentPosition.width, y: self.currentPosition.height)
                    .gesture(DragGesture()
                        .onChanged { value in
                            self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                        }
                        .onEnded { value in
                            self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                            self.newPosition = self.currentPosition
                        }
                    )
                    .blendMode(.destinationOut)
            }
            .compositingGroup()
        }
        .ignoresSafeArea(.all, edges: [.bottom,.top])
    }
}

struct Narangnorang_teamView_Previews: PreviewProvider {
    static var previews: some View {
        Narangnorang_teamView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
