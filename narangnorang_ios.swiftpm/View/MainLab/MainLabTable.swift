//
//  MainLabTable.swift
//  narangnorang_ios
//
//  Created by BAE on 2023/03/30.
//

import SwiftUI

struct MainLabTable: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("MainLabTable")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .mainLabTablePolaroid)
        }
        //        ZStack{
        //            Image("MainLabTable").resizable()
        //                .scaleEffect(1.1)
        //                .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        //
        //
        
    }
    
}

struct MainLabTable_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTable()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
