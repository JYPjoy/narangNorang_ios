import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // switch
            // switch
            Image(systemName: "globe")
                .font(.system(size: 40))
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.system(size: 40, weight: .bold, design: .rounded))
        }
    }
}

struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
