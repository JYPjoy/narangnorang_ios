//
//  MainLabView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabView: View {
    @StateObject var coordinator = Coordinator()
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle().ignoresSafeArea()
            Image("MainLab_In").resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .clueOnTable)
        }
    }
}

struct MainLabView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabView().previewInterfaceOrientation(.landscapeLeft)
    }
}
