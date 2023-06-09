//
//  SwiftUIView.swift
//  
//
//  Created by Joy on 2023/03/31.
//

import SwiftUI

struct CafeteriaView: View {
    @StateObject var coordinator = Coordinator()
    @State var scaleInOut: Bool = false
    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero
    @State private var blendMode: Bool = true
    
    var body: some View {
        ZStack{
            coordinator.navigationLinkSection()
            
            Image("cafeteria0")
                .resizable()
                .scaledToFit()
                .brightness(0.3)
            
            ZStack {
                Rectangle()
                
                ZStack{
                    Circle()
                        .frame(width: 300, height: 300)
                        .offset(x: self.currentPosition.width, y: self.currentPosition.height)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                                }
                                .onEnded { value in
                                    self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                                    self.newPosition = self.currentPosition
                                }
                        )
                        .onTapGesture {
                            self.scaleInOut = true
                            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                                coordinator.push(destination: .cafeteriaTableView)
                            }
                        }
                        .blendMode(.destinationOut)
                }
                .scaleEffect(scaleInOut ? 15: 1)
                .animation(Animation.easeInOut.speed(1/8),value: scaleInOut)
         
            }
            .compositingGroup()
            .opacity(0.8)

        }
        .background(.black)
        .ignoresSafeArea()
//        .onLongPressGesture {
//            coordinator.push(destination: .cafeteriaTableView)
//        }
    }}

struct CafeteriaView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
