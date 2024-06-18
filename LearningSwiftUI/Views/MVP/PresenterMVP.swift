import Combine

class CounterPresenter : ObservableObject {
    @Published private(set) var count : Int = 0 // Declarate @Published only within class to mention who will Observable 
    private var model: CounterModel
    
    init(count: Int, model: CounterModel) {
        self.count = count
        self.model = model
    }
    
    func increment() {
        model.count += 1 // model updating
        print("Model Updated!")
        count = model.count // Updated model to Presenter
        print("Value of Presenter Updated and equal = \(count) !")
    }
    
    func decrement() {
        model.count -= 1
        print("Model Updated!")
        count = model.count
        print("Value of Presenter Updated and equal = \(count) !")
    }
}
