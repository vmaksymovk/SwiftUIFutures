import SwiftUI

struct ControlGroupView: View {
    @State private var isClicked : Bool = false
    var body: some View {
        NavigationStack{
            NavigationLink("Next View") {
                ContentUnavailableView.search
            }
            .navigationTitle("Naviagtion Stack")
        }
    }
}



#Preview {
    ControlGroupView()
}
