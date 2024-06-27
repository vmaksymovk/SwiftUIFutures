import Foundation

class TodoPresenter: ObservableObject {
    @Published var items: [TodoItem] = []
    private var model: TodoModel

    init(model: TodoModel) {
        self.model = model
        self.items = model.items
    }

    func addItem(title: String) {
        let newItem = TodoItem(title: title)
        model.items.append(newItem)
        updateItems()
    }

    func removeItem(at index: Int) {
        model.items.remove(at: index)
        updateItems()
    }

    func toggleCompletion(for item: TodoItem) {
        if let index = model.items.firstIndex(where: { $0.id == item.id }) {
            model.items[index].isCompleted.toggle()
            updateItems()
        }
    }

    private func updateItems() {
        items = model.items
    }
}
