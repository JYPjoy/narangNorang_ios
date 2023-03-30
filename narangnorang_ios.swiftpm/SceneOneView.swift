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
    @State private var shouldAnimate = false
    @State var audio : AVAudioPlayer!
        
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
            
            Button {
                shouldAnimate.toggle()
                if shouldAnimate{
                    playSound(sound: "doorlock", type: "mp3")
                }else{
                    audioPlayer?.stop()
                }
            } label: {
                Text("음악을 재생합니다.")
            }


        }
        .onAppear{
            let song = NSDataAsset (name: "keyboard")
            self.audio = try! AVAudioPlayer(data: song!.data, fileTypeHint: "mp3")
            self.audio.play()
        }
        .onDisappear{
            self.audio.stop()
        }
        
    }
}

struct SceneOneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneOneView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
