
import SwiftUI

struct ContentViewBinding: View {
    @State private var name : String = ""
    @State private var age : Int = 0
    @State private var mail : String = ""
    @State private var selectedView : Int = 2
    var body: some View {
        
        TabView(selection: $selectedView) {
            
            BindingView1(name: $name, age: $age, mail: $mail)
                .tabItem {
                    Label("Binding1", systemImage: "person")
                }
                .tag(1)
            StateViewMain(name: $name, age: $age, mail: $mail)
                .tabItem {
                    Label("State", systemImage: "person")
                }
                .tag(2)
            BindingView2(name: $name, age: $age, mail: $mail)
                .tabItem {
                    Label("Binding2", systemImage: "person")
                }
                .tag(3)

        }
        
    }
}

#Preview {
    ContentViewBinding()
}
