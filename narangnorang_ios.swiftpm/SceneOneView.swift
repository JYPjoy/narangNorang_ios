//
//  AView.swift
//  narangnorang_ios
//
//  Created by Joy on 2023/03/30.
//

import SwiftUI
import AVFoundation

struct SceneOneView: View {
    @StateObject var coordinator = Coordinator(isRoot: true)
        
    var body: some View {
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance: AVSpeechUtterance = {
            let utterance = AVSpeechUtterance(string: "안녕하세요")
            utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
            utterance.rate = 0.5
            return utterance
        }()
        
        VStack {
            coordinator.navigationLinkSection()
            Text("첫 번째 씬입니다.")

            Button {
                coordinator.push(destination: .sceneFifteenView)
            } label: {
                Text("15번째 씬으로 이동합니다.")
            }
            Button {
                coordinator.push(destination: .sceneThreeView)
            } label: {
                Image(systemName: "c.square.fill")
            }
            
            Button {
                speechSynthesizer.speak(utterance)
            } label: {
                Text("음성 시리 안내입니다.")
            }

        }
        
    }
}
