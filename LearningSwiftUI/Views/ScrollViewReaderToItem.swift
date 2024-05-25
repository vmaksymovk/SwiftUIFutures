
import SwiftUI

struct ScrollViewReadertoItem: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack(spacing: 20){
                ScrollView{
                    ForEach(0..<100) { index in
                        Text("Item # \(index)")
                            .id(index)
                            .padding()
                            .foregroundStyle(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(.blue)
                            )
                    }
                    
                }
            }
            Button("Scroll to Item 50"){
                withAnimation {
                    proxy.scrollTo(50, anchor: .center)
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewReadertoItem()
}
