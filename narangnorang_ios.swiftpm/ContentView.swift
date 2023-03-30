import SwiftUI

struct ContentView: View {
    var body: some View {
        //IntroPageView()
        NavigationView{
            SceneOneView()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


