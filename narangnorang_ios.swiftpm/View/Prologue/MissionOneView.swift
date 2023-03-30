//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct MissionOneView: View {
    var body: some View {
        ZStack{
            Image("LEEO(01)")
                .resizable()
            
                .ignoresSafeArea()
        }
        
    }
}

struct MissionOneView_Previews: PreviewProvider {
    static var previews: some View {
        MissionOneView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
