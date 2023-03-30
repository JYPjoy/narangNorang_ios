//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct CafeteriaTableView: View {
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        coordinator.navigationLinkSection()
        Image("cafeteria1")
            .resizable()
            .ignoresSafeArea()
    }
}

struct CafeteriaTableView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaTableView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
