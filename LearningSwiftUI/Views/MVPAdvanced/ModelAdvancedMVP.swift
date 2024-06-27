import Foundation

class TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
}

class TodoModel {
    var items: [TodoItem] = []
}
