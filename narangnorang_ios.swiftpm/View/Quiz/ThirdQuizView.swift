//
//  ThirdQuiz.swift
//  narangnorang_ios
//
//  Created by Youngbin Choi on 2023/03/30.
//

import SwiftUI

struct ThirdQuizView: View {
    @StateObject var coordinator = Coordinator()
    @State var buttonOnePressed: Bool = false
    @State var buttonPressedCount: Int = 0
    
    var body: some View {
        ZStack {
            coordinator.navigationLinkSection()
            Color.black
            Image("postitquiz")
                .resizable()
                .scaledToFit()
            Button {
                buttonPressedCount += 1
                print(buttonPressedCount)
                
                if buttonPressedCount > 4 {
                    coordinator.push(destination: .rippedPaperView)
                }
                
            } label: {
                Rectangle()
                    .frame(width: 330, height: 800, alignment: .center)
                    .opacity(0.0)
            }
            .position(x: 980, y: 500)

            ZStack {
                if buttonPressedCount > 0 {
                    Path { path1 in
                        path1.move(to: CGPoint(x: 500, y: 200))
                        path1.addLine(to: CGPoint(x: 800, y: 800))
                        path1.closeSubpath()
                    }
                    .stroke(.red, lineWidth: 10)
                }
                if buttonPressedCount > 1 {
                    Path { path2 in
                        path2.move(to: CGPoint(x: 500, y: 380))
                        path2.addLine(to: CGPoint(x: 800, y: 380))
                        path2.closeSubpath()
                    }
                    .stroke(.red, lineWidth: 10)
                }
                if buttonPressedCount > 2 {
                    Path { path3 in
                        path3.move(to: CGPoint(x: 500, y: 600))
                        path3.addLine(to: CGPoint(x: 800, y: 200))
                        path3.closeSubpath()
                    }
                    .stroke(.red, lineWidth: 10)
                }
                if buttonPressedCount > 3 {
                    Path { path4 in
                        path4.move(to: CGPoint(x: 500, y: 800))
                        path4.addLine(to: CGPoint(x: 800, y: 600))
                        path4.closeSubpath()
                    }
                    .stroke(.red, lineWidth: 10)
                }
            }
        }
        .ignoresSafeArea()
        //TODO: 화면 전환 
//        .onLongPressGesture{
//            coordinator.push(destination: .rippedPaperView)
//        }
        
    }
}

struct ThirdQuiz_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuizView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
