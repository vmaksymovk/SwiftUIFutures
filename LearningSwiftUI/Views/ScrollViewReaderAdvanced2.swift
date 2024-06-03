
import SwiftUI

struct ScrollViewReaderAdvanced2: View {
    @State var inputValue : Int? = nil
    var body: some View {
        VStack{
            ScrollViewReader{ proxy in
                ScrollView{
                    LazyVStack(spacing: 15){
                        ForEach(1..<300, id: \.self){ index in
                            Text("Item #\(index)")
                                .id(index)
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(.green)
                                )
                            
                        }
                    }
                }
                
                HStack{
                    TextField("Scroll to", value: $inputValue, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.leading, 10)
                    Button (action: {
                        if let index = inputValue, (1..<300).contains(index){
                            withAnimation{
                            }
                                proxy.scrollTo(inputValue, anchor: .center)
                        }
                    })
                    {
                        Label("Retrieve", systemImage: "paperplane")
                            .labelStyle(.iconOnly)
                            .padding(.trailing, 10)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderAdvanced2()
}
