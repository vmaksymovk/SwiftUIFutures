

import SwiftUI

struct MVPAdvancedView: View {
    @ObservedObject var presenter: TodoPresenter
    @State private var newTaskTitle: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("New task", text: $newTaskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                    presenter.addItem(title: newTaskTitle)
                    newTaskTitle = ""
                }) {
                    Text("Add")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            
            List {
                ForEach(presenter.items) { item in
                    HStack {
                        Text(item.title)
                            .strikethrough(item.isCompleted)
                        Spacer()
                        Button(action: {
                            presenter.toggleCompletion(for: item)
                        }) {
                            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(item.isCompleted ? .green : .gray)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                }
                .onDelete(perform: delete)
            }
        }
    }
    
    private func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            presenter.removeItem(at: index)
        }
    }
}

#Preview {
    MVPAdvancedView(presenter: TodoPresenter(model: TodoModel()))
}
