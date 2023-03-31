import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            //SceneOneView()
            //PrologueHand()
            OpeningView()
                //.navigationBarBackButtonHidden(true)
        }
        //.navigationViewStyle(.stack)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


