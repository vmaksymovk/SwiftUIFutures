import SwiftUI

struct ViewMVP: View {
    @ObservedObject var presenter: CounterPresenter
    
    var body: some View {
        VStack {
            Text("Count: \(presenter.count)")
                .font(.largeTitle)
            
            HStack {
                Button(action: presenter.decrement) {
                    Text("-")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
                
                Button(action: presenter.increment) {
                    Text("+")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
            }
        }
    }
}


//#Preview {
//    
//    ViewMVP(presenter: <#T##CounterPresenter#>)
//}
