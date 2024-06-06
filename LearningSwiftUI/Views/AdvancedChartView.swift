import SwiftUI
import Charts

struct ChartModel : Identifiable {
    let id = UUID()
    let value : Double
    let month : String
}

struct AdvancedChartView: View {
    let data = [
        ChartModel(value: 300.4, month: "January"),
        ChartModel(value: 600.2, month: "February"),
        ChartModel(value: 60.8, month: "March"),
        ChartModel(value: 380.4, month: "April"),
        ChartModel(value: 30.1, month: "May"),
        ChartModel(value: 0, month: "June")
        
    ]
    
    var body: some View {
        VStack(alignment: .center){
            Chart {
                ForEach(data){ partOfChart in
                    BarMark(x: .value("Months", partOfChart.month),
                            y: .value("Amount", partOfChart.value))
                    .foregroundStyle(by: .value("Month", partOfChart.month))
                }
            }
            
            
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    AdvancedChartView()
}
