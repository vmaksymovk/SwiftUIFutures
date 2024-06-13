
import SwiftUI

struct StateViewMain: View {
    @Binding var name : String
    @Binding var age : Int
    @Binding var mail : String
    var body: some View {
        ZStack{
            Color.green
            VStack{
                TextField("Provide your name ", text: $name)
                    .textFieldStyle(.roundedBorder)
                TextField("Provide your age ", value: $age, format: .number)
                    .textFieldStyle(.roundedBorder)
                TextField("Provide your mail ", text: $mail)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
        }.ignoresSafeArea()
    }
}

#Preview {
    StateViewMain(name: .constant(""), age: .constant(0), mail: .constant(""))
}
