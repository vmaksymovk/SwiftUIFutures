
import SwiftUI

struct StateMainGreetingView: View {
    @State private var name : String = ""
    @State private var colorPicked : Color = .white
    var body: some View {
        
        TabView {
            GreetingBindingView(name: $name, colorPicked: $colorPicked)
                .tabItem {
                    Label("Binding", systemImage: "person")
                }
            ColorBackGroundPickerView(name: $name, colorPicked: $colorPicked)
                .tabItem {
                    Label("Binding", systemImage: "person")
                }
            SettingView(color: $colorPicked, name: $name)
                .tabItem {
                    Label("Settings", systemImage: "person")
                }
        }
    }
}

#Preview {
    StateMainGreetingView()
}
