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
        ZStack{
            coordinator.navigationLinkSection()
            Image("cafeteria1")
                .resizable()
                .scaledToFit()
        }
        .background(
            Rectangle()
                .fill(.black)
                .scaledToFill()
        )
        .onTapGesture {
            coordinator.push(destination: .rippedPaperView)
        }
    }
}

struct CafeteriaTableView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaTableView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
