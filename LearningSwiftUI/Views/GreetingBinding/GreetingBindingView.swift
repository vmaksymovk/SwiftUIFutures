

import SwiftUI

struct GreetingBindingView: View {
    @Binding var name : String
    @Binding var colorPicked : Color
    var body: some View {
        ZStack{
            colorPicked
                .ignoresSafeArea()
            VStack{
                TextField("What's your name?", text: $name)
                    .textFieldStyle(.roundedBorder)
            }
        }
        
    }
}

#Preview {
    GreetingBindingView(name: .constant(""), colorPicked: .constant(.white))
}
