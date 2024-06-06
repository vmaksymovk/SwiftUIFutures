
import SwiftUI

struct ColorPickerView: View {
    @State private var selected : Color = .white
    var body: some View {
        ZStack{
            selected.ignoresSafeArea()
            VStack{
                ColorPicker("Color Picker", selection: $selected)
            }
        }
    }
}

#Preview {
    ColorPickerView()
}
