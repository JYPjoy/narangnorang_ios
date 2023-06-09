//
//  SwiftUIView.swift
//  
//
//  Created by OLING on 2023/03/30.
//

import SwiftUI

struct PrologueHand: View {
    @StateObject var coordinator = Coordinator(isRoot: true)
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            Rectangle()
                .ignoresSafeArea()
            Image("Olilng_Hand 2")
                .resizable()
                .scaledToFit()
        }
        .onTapGesture {
            coordinator.push(destination: .missionOneView)
        }
    }
}

struct PrologueHand_Previews: PreviewProvider {
    static var previews: some View {
        PrologueHand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
