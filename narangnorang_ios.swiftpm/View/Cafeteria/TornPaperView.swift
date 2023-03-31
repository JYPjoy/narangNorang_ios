//
//  TornPaperView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct TornPaperView: View {
    @State private var location1: CGPoint = CGPoint(x: 500, y: 200)
    @State private var location2: CGPoint = CGPoint(x: 500, y: 500)
    
    var paper1: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location1 = value.location
            }
    }
    
    var paper2: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location2 = value.location
            }
    }
    
    var body: some View {
        
        VStack{
            Image("paper1")
                .resizable()
                .frame(width: 1000, height: 700)
                .position(location1)
                .gesture(
                    paper1
                )
            
            Image("paper2")
                .resizable()
                .frame(width: 1000, height: 700)
                .position(location2)
                .gesture(
                    paper2
                )
        }
    }
}

struct TornPaperView_Previews: PreviewProvider {
    static var previews: some View {
        TornPaperView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
