//
//  SecurefieldView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/29.
//

import SwiftUI

struct SecurefieldView: View {
    
    let pass = "portfolio"
    @State private var password: String = ""
    
    var body: some View {
        ZStack{
            Image("Background")
            
                VStack(spacing: 20){
                    Spacer()
                    Circle().foregroundColor(.orange).frame(width: 250)
                    Text("Oling").font(.system(size: 60)).foregroundColor(Color.orange)
                    Spacer().frame(height: 50)
                
                    SecureField("비밀번호", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).textInputAutocapitalization(.never).privacySensitive().frame(width: 350)
                    
                    Button(action: {
                        if pass==password{
                            print("Correct!")
                        }else{
                            self.password = ""
                            print("Wrong!")
                            
                        }
                    }){
                        Image(systemName: "arrow.forward.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                        
                    }
                    Spacer()
                }
        }
                

    }
}

struct SecurefieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecurefieldView().previewInterfaceOrientation(.landscapeLeft)
    }
}
