//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct MissionTwoView: View {
    var body: some View {
        ZStack{
            
            Image("LEEO 02(01)")
                .resizable()
                .ignoresSafeArea()
        }
        
    }
}

struct MissionTwoView_Previews: PreviewProvider {
    static var previews: some View {
        MissionTwoView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
