

import SwiftUI

struct MVPAdvancedView: View {
    @ObservedObject var presenter : CounterPresenterAdvanced
    var body: some View {
        VStack{
            Text("\(presenter.count)")
                .font(.largeTitle)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(presenter.count > 10 ? .green : .orange)
                )
            
            HStack{
                Button("-") {
                    presenter.decriment()
                }
                .padding(25)
                .font(.largeTitle)
                .background(
                    Circle()
                        .fill(.red)
                        .opacity(0.4)
                )
                .offset(x: -40, y: 20)
                Button("+") {
                    presenter.increment()
                }
                .padding(20)
                .font(.largeTitle)
                .background(
                    Circle()
                        .fill(.green)
                        .opacity(0.4)
                )
                .offset(x: 40, y: 20)
            }
        }
    }
}

#Preview {
    MVPAdvancedView(presenter: CounterPresenterAdvanced(count: 0, model: modelCounterAdvanced()))
}
