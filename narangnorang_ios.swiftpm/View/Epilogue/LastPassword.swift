//
//  LastPassword.swift
//  narangnorang_ios
//
//  Created by Youngbin Choi on 2023/03/29.
//

import SwiftUI
import AVFoundation

struct LastPassword: View {
    @StateObject var coordinator = Coordinator()
    @State var passwordCount: Int = 0
    let passwordAnswer: String = "4213"
    @State var passwordTry: Array<Int> = []
    @State var passwordTryString : String = ""
    @State private var audio : AVAudioPlayer!
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil)
    ]
    var body: some View {
        ZStack {
            coordinator.navigationLinkSection()
            Color.black
            Image("DSC06190")
                .resizable()
                .scaledToFit()
            pressedView
            keyPad
                .frame(width: 170, height: 50, alignment: .center)
                .position(x: 684, y: 441)
            submitButton
                .position(x: 740, y: 510)
        }
        .ignoresSafeArea()
    }
    
    
    var keyPad : some View {
        LazyVGrid(
            columns: columns,
            alignment: .center,
            spacing: 5 ) {
                Section {
                    ForEach(1..<10) { index in
                        Button {
                            if passwordCount == 4 {
                                print("비밀번호는 4자리 입니다")
                            }else{
                                passwordCount += 1
                                passwordTry.append(index)
                                passwordTryString = passwordTry.map(String.init).joined()
                                print("\(index)")
                                print(passwordAnswer)
                                print(passwordTryString)
                            }
                        } label: {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 40, height: 30)
                                .overlay {
                                    Text("\(index)번")
                                }
                                .opacity(0.0)
                        }
                        
                    }
                }
            }
        
    }
    
    var submitButton : some View {
        Button {
            if passwordTryString == passwordAnswer {
                let song = NSDataAsset (name: "doorlock1")
                self.audio = try! AVAudioPlayer(data: song!.data, fileTypeHint: "m4a")
                self.audio.play()
                
                DispatchQueue.main.asyncAfter(deadline: .now()+3){
                    self.audio.stop()
                    coordinator.push(destination: .escapedView)
                }
            }
            passwordCount = 0
            passwordTry = []
            passwordTryString = passwordTry.map(String.init).joined()
            
        } label: {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 40, height: 30)
                .overlay {
                    Text("확인")
                }
                .opacity(0.0)
        }

    }
    
    var pressedView : some View {
        ZStack {
            Rectangle()
                .fill(Color("pressedView"))
                .frame(width: 150, height: 120, alignment: .center)
                .position(x: 682, y: 250)
            Text("\(passwordTryString)")
                .font(.system(size: 44))
                .tracking(5)
                .fontWeight(.heavy)
                .position(x: 684, y: 250)
                .foregroundColor(Color.red)
        }
    }
}

struct LastPassword_Previews: PreviewProvider {
    static var previews: some View {
        LastPassword()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

