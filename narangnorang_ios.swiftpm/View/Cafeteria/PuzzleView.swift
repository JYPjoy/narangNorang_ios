//
//  TornPaperView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct PuzzleView: View {
    @StateObject var coordinator = Coordinator()
    
    @State private var location1: CGPoint = CGPoint(x: 300, y: 200)
    @State private var location2: CGPoint = CGPoint(x: 1000, y: 300)
    @State private var location3: CGPoint = CGPoint(x: 600, y: 600)
    @State private var location4: CGPoint = CGPoint(x: 1000, y: 800)
    @State private var location5: CGPoint = CGPoint(x: 400, y: 700)
    @State private var location6: CGPoint = CGPoint(x: 700, y: 800)
    
    var paper1: some Gesture {
        DragGesture()
            .onChanged {
                self.location1 = $0.location
            }
    }

    var paper2: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location2 = value.location
            }
    }

    var paper3: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location3 = value.location
            }
    }

    var paper4: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location4 = value.location
            }
    }
    
    var paper5: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location5 = value.location
            }
    }

    var paper6: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location6 = value.location
            }
    }
    
    var body: some View {
        coordinator.navigationLinkSection()
        ZStack{
            Image("paper1")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location1)
                .gesture(
                    paper1
                )
            
            Image("paper2")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location2)
                .gesture(
                    paper2
                )
            
            
            Image("paper3")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location3)
                .gesture(
                    paper3
                )
            
            Image("paper4")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location4)
                .gesture(
                    paper4
                )
            
            
            Image("paper5")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location5)
                .gesture(
                    paper5
                )
            
            Image("paper6")
                .resizable()
                .frame(width: 300, height: 200)
                .position(location6)
                .gesture(
                    paper6
                )
        }
        .background(.black)
        .opacity(0.7)
        .onTapGesture {
            coordinator.push(destination: .completedPuzzle)
        }
    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
