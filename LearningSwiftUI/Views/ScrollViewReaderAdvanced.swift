import SwiftUI

struct ScrollViewReaderAdvanced: View {
    @State private var scrollToInput: Int? = nil
    
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack {
                        ForEach(1..<300) { index in
                            Text("Item \(index)")
                                .id(index)
                                .foregroundStyle(.white)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(Color.cyan)
                                )
                        }
                    }
                }
                
                HStack {
                    TextField("Scroll to:", value: $scrollToInput, format: .number)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                    
                    Button(action: {
                        if let index = scrollToInput {
                            withAnimation {
                                proxy.scrollTo(index, anchor: .center)
                            }
                        }
                    }) {
                        Image(systemName: "paperplane")
                            .font(.title)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ScrollViewReaderAdvanced()
}
