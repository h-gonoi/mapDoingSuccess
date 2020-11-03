import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                taskView()
                    .tabItem {
                       Image(systemName: "list.dash")
                        Text("TASK")
                    }.tag(1)
                    .accentColor(.green)
                mapView()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("MAP")
                    }.tag(2)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
