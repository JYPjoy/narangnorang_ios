//
//  MainLabTableView.swift
//  narangnorang_ios
//
//  Created by 김용주 on 2023/03/30.
//

import SwiftUI

struct MainLabTableView: View {
    var body: some View {
        ZStack{
            Rectangle().ignoresSafeArea()
            Image("MainLabTable").resizable()
                .scaledToFit()
        }
    }
}

struct MainLabTableView_Previews: PreviewProvider {
    static var previews: some View {
        MainLabTableView().previewInterfaceOrientation(.landscapeLeft)
    }
}
