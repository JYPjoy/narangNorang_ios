//
//  LastPassword.swift
//  narangnorang_ios
//
//  Created by Youngbin Choi on 2023/03/29.
//

import SwiftUI

struct LastPassword: View {

    @State var passwordCount: Int = 0
    let passwordAnswer: String = "4213"
    @State var passwordTry: Array<Int> = []
    @State var passwordTryString : String = ""
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 1, alignment: nil)
    ]
    var body: some View {
        ZStack {
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
                print("다음화면으로 이동")
                //TODO: 화면 전환 - 다음화면으로 넘어가는 코드
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

