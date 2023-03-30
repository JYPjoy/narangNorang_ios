//
//  SecurefieldView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/29.
//

import SwiftUI
import AVFoundation

struct SecurefieldView: View {
    
    let pass = "portfolio"
    @StateObject var coordinator = Coordinator()
    @State private var password: String = ""
    @State var audio : AVAudioPlayer!
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            Image("LockScreen").resizable().scaledToFit()
            
                VStack(spacing: 20){
                    Circle().foregroundColor(.orange).frame(width: 250)
                    Text("Oling").font(.system(size: 60)).foregroundColor(Color.orange)
                    Spacer().frame(height: 50)
                
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).textInputAutocapitalization(.never).privacySensitive().frame(width: 350)
                    
                    //화면전환
                    Button(action: {
                        if pass==password{
                            print("Correct!")
                            coordinator.push(destination: .macView)
                        }else{
                            self.password = ""
                            print("Wrong!")
                            
                        }
                    }){
                        Image(systemName: "arrow.forward.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                        
                    }
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

struct SecurefieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecurefieldView().previewInterfaceOrientation(.landscapeLeft)
    }
}
