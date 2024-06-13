
import SwiftUI

struct ColorPickerView: View {
    @State private var selected : Color = .white
    @Binding var date : Date
    var body: some View {
        ZStack{
            selected.ignoresSafeArea()
            VStack{
                Text(date.description)
                ColorPicker("Color Picker", selection: $selected)
            }
        }
    }
}

#Preview {
    ColorPickerView(date: .constant(Date()))
}
