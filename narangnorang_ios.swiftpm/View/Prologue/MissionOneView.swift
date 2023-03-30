//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI
import AVFoundation

struct MissionOneView: View {
    @StateObject var coordinator = Coordinator()
    @State var audio : AVAudioPlayer!
    
    var body: some View {
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance: AVSpeechUtterance = {
            let utterance = AVSpeechUtterance(string: "안녕 올링, 너는 이팀저팀 싸돌아 다니느라 너희 팀에게 소홀했지")
            utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
            utterance.rate = 0.5
            return utterance
        }()
        
        ZStack{
            coordinator.navigationLinkSection()
            Image("LEEO(01)")
                .resizable()
                .ignoresSafeArea()
        }
        .onAppear{
            speechSynthesizer.speak(utterance)
        }
        .onTapGesture {
            coordinator.push(destination: .missionTwoView)
        }
        
    }
}

struct MissionOneView_Previews: PreviewProvider {
    static var previews: some View {
        MissionOneView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
