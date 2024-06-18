import Combine

class CounterPresenter : ObservableObject {
    @Published private(set) var count : Int = 0
    private var model: CounterModel
    
    init(count: Int, model: CounterModel) {
        self.count = count
        self.model = model
    }
    
    func increment() {
        model.count += 1 // model updating
        count = model.count // Updated model to Presenter
    }
    
    func decrement() {
        model.count -= 1
        count = model.count
    }
}
