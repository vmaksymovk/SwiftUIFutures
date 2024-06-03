
import SwiftUI
import Charts


struct SalesData: Identifiable {
    let id = UUID()
    let month: String
    let sales: Double
}


struct SimpleChartView: View {
    let salesData = [
        SalesData(month: "January", sales: 200),
        SalesData(month: "February", sales: 250),
        SalesData(month: "March", sales: 300),
        SalesData(month: "April", sales: 150),
        SalesData(month: "May", sales: 400)
    ]
    var body: some View {
        Chart {
            ForEach(salesData) { data in
                BarMark(
                    x: .value("Month", data.month),
                    y: .value("Sales", data.sales)
                )
                
            }
        }
        .frame(width: 300, height: 300)
        .padding()
        
    }
}

#Preview {
    SimpleChartView()
}
