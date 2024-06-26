
import SwiftUI

struct BindingShortView: View {
    @Binding var colorPicked : Color
    var body: some View {
        ZStack{
            colorPicked
                .ignoresSafeArea()
            VStack{
                ColorPicker("Color Picker", selection: $colorPicked)
            }
        }
    }
}

#Preview {
    BindingShortView(colorPicked: .constant(.white))
}
