
import Foundation

class CounterPresenterAdvanced : ObservableObject {
    @Published private(set) var count : Int = 0
    private var model : modelCounterAdvanced
    
    init(count: Int, model: modelCounterAdvanced) {
        self.count = count
        self.model = model
    }
    
    func increment(){
        print("Model Updated!")
        model.count += 1
        
        print("Presenter Updated!")
        count = model.count
    }
    
    func decriment(){
        print("Model Updated!")
        model.count -= 1
        
        print("Presenter Updated!")
        count = model.count
    }
}
