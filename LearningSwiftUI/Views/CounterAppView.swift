import SwiftUI

struct CounterAppView: View {
    @State private var value : Int = 0
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.blue)
                )
            
            Button("Increase value") {
                value += 1
            }
        }
    }
}

#Preview {
    CounterAppView()
}
