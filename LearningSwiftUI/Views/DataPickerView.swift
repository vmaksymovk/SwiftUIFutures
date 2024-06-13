
import SwiftUI

struct DataPickerView: View {
    @Binding var date : Date
    var body: some View {
        VStack{
            DatePicker("Date Picker", selection: $date, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .tint(.green)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.green)
                        .opacity(0.25)
                        .shadow(radius: 10)
                )
        }
        Text(date.description)
    }
}

#Preview {
    DataPickerView(date: .constant(Date()))
}
