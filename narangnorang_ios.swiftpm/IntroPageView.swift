//
//  IntroPageView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/29.
//

import SwiftUI

struct IntroPageView: View {
    @State var typedText: String = ""
    let completedText: String = "어느 야심한 금요일 저녁,\n션은 나홀로 메인랩에 방문했다."
    
    var body: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text(typedText)
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                Button {
                    typingEffect()
                } label: {
                    Text("START")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .padding(.horizontal, 100)
                        .background(Color("buttonColor1")
                            .cornerRadius(20)
                        )
                }

            }
        }
    }
    
    func typingEffect(at position: Int = 0) {
        if position == 0 {
            typedText = ""
        }
        if position < completedText.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                typedText.append(completedText[position])
                typingEffect(at: position + 1)
            }
        }
    }
    
}

struct IntroPageView_Previews: PreviewProvider {
    static var previews: some View {
        IntroPageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
