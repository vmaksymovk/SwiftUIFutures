//
//  SettingView.swift
//  LearningSwiftUI
//
//  Created by Влад on 6/14/24.
//

import SwiftUI

struct SettingView: View {
    @Binding var color: Color
    @Binding var name: String
    var body: some View {
        ZStack{
            color
                .ignoresSafeArea()
            VStack{
                TextField("Your name: ", text: $name)
                    .textFieldStyle(.roundedBorder)
                ColorPicker("Choose color", selection: $color)
                    
            }
        }
    }
}

#Preview {
    SettingView(color: .constant(.white), name: .constant(""))
}
