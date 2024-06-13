import SwiftUI
struct ContentView: View {
    @State private var date = Date()
    var body: some View {
        TabView {
            DataPickerView(date: $date)
                .tabItem {
                    Label("ParentView", systemImage: "person.fill")
                }
            ColorPickerView(date: $date)
                .tabItem { 
                    Label("ChildtView", systemImage: "person")
                }
            
        }
    }
}
#Preview {
    ContentView()
        .preferredColorScheme(.light)
}
