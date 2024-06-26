import SwiftUI

struct StateShortView: View {
    @State private var colorPicked : Color = .white
    @State private var isPressed : Bool = false
    var body: some View {
        ZStack{
            colorPicked
                .ignoresSafeArea()
            VStack{
                ColorPicker("ColorPicker", selection: $colorPicked)
                
                Button("SheetView", role: .destructive) {
                    isPressed.toggle()
                }
                .offset(y: 150)
                .sheet(isPresented: $isPressed, content: {
                    BindingShortView(colorPicked: $colorPicked)
                        .presentationDetents([.height(200), .large])
                        
                })
            }
        }
    }
}

#Preview {
    StateShortView()
}
