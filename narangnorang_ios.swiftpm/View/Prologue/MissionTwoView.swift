//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI
import AVFoundation

struct MissionTwoView: View {
    @StateObject var coordinator = Coordinator()
    @State var audio : AVAudioPlayer!
    
    var body: some View {
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance: AVSpeechUtterance = {
            let utterance = AVSpeechUtterance(string: "이 안에 너희 팀원이 갇혀 있으니 C5에서 단서를 찾아 비밀번호를 풀어 팀원을 구해라")
            utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
            utterance.rate = 0.5
            return utterance
        }()
        
        ZStack{
            coordinator.navigationLinkSection()
            Image("LEEO 02(01)")
                .resizable()
                .ignoresSafeArea()
        }
        .onAppear{
            speechSynthesizer.speak(utterance)
        }
        .onDisappear{
            speechSynthesizer.stopSpeaking(at: .immediate)
        }
        .onTapGesture {
            coordinator.push(destination: .missionThreeView)
        }
        
    }
}

struct MissionTwoView_Previews: PreviewProvider {
    static var previews: some View {
        MissionTwoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
