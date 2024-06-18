
import SwiftUI

struct ColorBackGroundPickerView: View {
    @Binding var name : String
    @Binding var colorPicked : Color
    var body: some View {
        
        ZStack{
            Color(colorPicked)
                .ignoresSafeArea()
            VStack{
                Text("Hello, \(name) !")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 38)
                            .fill(.blue)
                    )
                ColorPicker("Color Picker", selection: $colorPicked)
            }
        }
        
    }
}

#Preview {
    ColorBackGroundPickerView(name: .constant(""), colorPicked: .constant(.green))
}
