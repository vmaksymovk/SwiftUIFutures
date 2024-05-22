//
//  Task#1.swift
//  LearningSwiftUI
//
//  Created by Влад on 5/22/24.
//

import SwiftUI

struct Task_1: View {
    let images = (1...30).map() {"uifaces-popular-image-\($0)"}
    var columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(images, id: \.self){ image in
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .clipShape(Circle())
                    }
                })
            }.navigationTitle("Followers")
        }
    }
}

#Preview {
    Task_1()
}
