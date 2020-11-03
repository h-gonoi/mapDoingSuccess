import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //下部のタブ
            TabView {
                taskView()
                    //タスク画面遷移
                    .tabItem {
                       Image(systemName: "list.dash")
                        Text("TASK")
                    }.tag(1)
                    .accentColor(.green)
                mapView()
                    //マップ画面遷移
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
