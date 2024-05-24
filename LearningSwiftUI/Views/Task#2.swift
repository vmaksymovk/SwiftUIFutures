//
//  Task#2.swift
//  LearningSwiftUI
//
//  Created by Влад on 5/24/24.
//

import SwiftUI

struct Task_2: View {
    var body: some View {
        VStack(spacing: 5){
            Text("First text")
            GeometryReader{ geometryProxy in
                VStack{
                    Text("Width: \(geometryProxy.size.width)")
                    Text("Height: \(geometryProxy.size.height)")
                }
            }
            .background(.green)
            Text("Second text")
        }
        GeometryReader{ geometryProxy in
            VStack(alignment: .leading){
                Text("Leading: \(geometryProxy.safeAreaInsets.leading)")
                Text("Trailing:\(geometryProxy.safeAreaInsets.trailing)")
                Text("Top: \(geometryProxy.safeAreaInsets.top)")
                Text("Bottom: \(geometryProxy.safeAreaInsets.bottom)")
            }
        }.background(.yellow)
    }
}

#Preview {
    Task_2()
        .preferredColorScheme(.light)
}
